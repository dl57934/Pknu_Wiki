package DAO;

import DTO.writingDTO;

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
        query = "select * from writinginfo where body ='"+dto.getBody()+"' and title='"+dto.getTitle()+"'";
        resultSet = statement.executeQuery(query);
        System.out.println("overlap: "+resultSet.next());
        if(!resultSet.next()) {
            System.out.println("overlap은 false야");
            return false;
        }
        else {
            System.out.println("overlap은 true야");
            return true;
        }
    }
    public boolean setWriting(writingDTO dto) throws SQLException {
        if(overlapCheck(dto) == false){
            query = "insert into writinginfo values('"+ dto.getBody()+"','"+dto.getTitle()+"','"+dto.getWriter()+"')";
            try {
                int resultNum = statement.executeUpdate(query);
                if(resultNum == 1){
                    System.out.println("db입력 성공");
                    return true;
                } else{
                    System.out.println("db입력 실패");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else{
               return false;
        }
        return true;
    }
}
