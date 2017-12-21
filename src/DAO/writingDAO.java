package DAO;

import DTO.writingDTO;
import oracle.jdbc.internal.OracleResultSet;
import oracle.sql.CLOB;

import java.io.BufferedWriter;
import java.sql.*;

public class writingDAO {
    private String url = "jdbc:oracle:thin:@localhost:1521:xe";
    private  String dataBaseId = "test";
    private String dataBasePw = "dngmadl14";
    private Connection connection;
    private Statement statement;
    private ResultSet resultSet;
    String query = "";
    public writingDAO() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection(url,dataBaseId,dataBasePw);
            statement = connection.createStatement();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public boolean overlapCheck(writingDTO dto) throws SQLException {
        query = "select * from WRITINGINFO2 where  title='"+dto.getTitle()+"'";
        resultSet = statement.executeQuery(query);
        resultSet.next();
        if(resultSet.next()) { //같은 타이틀 값이 있다.
            System.out.println("overlap은 true야");
            return true;
        }
        else {
            System.out.println("overlap은 false야");
            return false;
        }
    }
    public boolean repairwriting(String head, String body){
        System.out.println("repairwriting(): "+head);
        head = "#"+head;
       String query =  "update writinginfo2 set  body = '"+ body + "'WHERE title ='"+head+"'";
        try {
          int n = statement.executeUpdate(query);
            if(n >0){
                System.out.println("고친거 디비에 넣기 성공");
                return true;
            }
            else {
                System.out.println("고친거 디비에 넣기 실패");
                return  false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }
    public boolean setWriting(writingDTO dto) throws SQLException {
        if(overlapCheck(dto) == false){
            query = "insert into WRITINGINFO2 values('"+"empty_clob()"+"','"+dto.getTitle()+"','"+dto.getWriter()+"')";
            try {
                webInfoDAO webInfoDAO = new webInfoDAO();
                statement.executeUpdate(query);
                connection.setAutoCommit(false);
                resultSet = statement.executeQuery( "select * from writinginfo2 where title = '"+dto.getTitle()+"' for update");
                if(resultSet.next()){
                    CLOB cl = ((OracleResultSet)resultSet).getCLOB("body");
                    BufferedWriter writer = new BufferedWriter(cl.getCharacterOutputStream());
                    writer.write(dto.getBody());
                    writer.close();
                    connection.commit();
                    connection.setAutoCommit(true);
                    int webPage= webInfoDAO.getwritingPage();
                    System.out.println(webPage);
                    webPage+=1;
                    String query3 = "update webinfo set writingpage ="+webPage;
                    statement.executeUpdate(query3);
                    System.out.println("db에 넣기 성공");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
           }else{
               return false;
        }
        return true;
    }
    public String getBody(String title){
        query = "select * from WRITINGINFO2 where title='"+"#"+title+"'";
        try {
            resultSet = statement.executeQuery(query);
            while(resultSet.next()){
                String viewBody =  resultSet.getString("body");
                return viewBody;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "";
    }
    public String getTitle(String title){
        query = "select * from WRITINGINFO2 where title='"+"#"+title+"'";
        try {
            resultSet = statement.executeQuery(query);
            while(resultSet.next()){
                String viewTitle = resultSet.getString("title");
                return viewTitle;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "";
    }
    public String getView(String title){
        query = "select * from WRITINGINFO2 where title='"+title+"'";
        try {
            resultSet = statement.executeQuery(query);
            while(resultSet.next()){
                String viewTitle =  resultSet.getString("title");
                String viewBody =  resultSet.getString("body");
                String viewWriter =  resultSet.getString("writer");
                System.out.println(viewTitle +"\n\r"+ viewBody + "\n\r" + viewWriter);
                String finalView = viewTitle +"\n\r"+ viewBody + "<br>작성자:" + viewWriter;
                return finalView;
            }
            System.out.println("getView 실패");
        } catch (SQLException e) {
            e.printStackTrace();
        }
      return "<h1>존재하지 않는 글입니다.</h1>" +
              "<h3><a href=Pknuwiki/view/writing>작성하시겠습니까?</a></h3>";
    }
    public String multiView(String title){
        query = "select * from WRITINGINFO2 where title='"+title+"'";
        try {
            System.out.println("multiView Title: "+title);
            resultSet = statement.executeQuery(query);
            String finalView = "";
            while (resultSet.next()) {
                String viewTitle = resultSet.getString("title");
                String viewBody = resultSet.getString("body");
                String viewWriter = resultSet.getString("writer");
                System.out.println(viewTitle + "\n\r" + viewBody + "\n\r" + viewWriter);
                finalView += viewTitle + "\n\r" + viewBody + "<br>작성자: " + viewWriter;
                finalView += "\n\r";
            }
            return finalView;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "<h1>존재하지 않는 글입니다.</h1>" +
                "<h3><a href=Pknuwiki/view/writing>작성하시겠습니까?</a></h3>";
    }
}
