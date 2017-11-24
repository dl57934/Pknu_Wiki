package DAO;

import java.sql.*;

public class webInfoDAO {
    private String url = "jdbc:oracle:thin:@localhost:1521:xe";
    private  String dataBaseId = "test";
    private String dataBasePw = "dngmadl14";
    private Connection connection;
    private Statement statement;
    private ResultSet resultSet;
    String query = "";
    public webInfoDAO() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection(url,dataBaseId,dataBasePw);
            statement = connection.createStatement();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public String getMemberNum(){
        query = "select * from webinfo";
        try {
            resultSet = statement.executeQuery(query);
            while(resultSet.next()) {
               return resultSet.getString("member");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public String getwritingPage(){
        query = "select * from webinfo";
        try {
            resultSet = statement.executeQuery(query);
            while(resultSet.next()) {
                return resultSet.getString("writingpage");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public String discussionNum(){
        query = "select * from webinfo";
        try {
            resultSet = statement.executeQuery(query);
            while(resultSet.next()) {
                return resultSet.getString("discussionnum");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
