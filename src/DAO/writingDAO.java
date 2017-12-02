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
    public void setWriting(writingDTO dto){
        query = "insert into writinginfo values('"+ dto.getBody()+"','"+dto.getTitle()+"','"+dto.getWriter()+"')";
        try {
            int resultNum = statement.executeUpdate(query);
            if(resultNum == 1){
                System.out.println("db입력 성공");
            } else{
                System.out.println("db입력 실패");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
