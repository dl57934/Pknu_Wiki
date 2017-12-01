package DAO;

import DTO.writingDTO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

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
    public void setTilte(writingDTO dto){
        query = "insert into member values('"+ dto.getBody()+"','"+dto.getTitle()+"','"+dto.getWriter()+"')";
    }
}
