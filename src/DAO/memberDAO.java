package DAO;

import DTO.memberDTO;

import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;
import java.sql.*;

public class memberDAO {
    private String url = "jdbc:oracle:thin:@localhost:1521:xe";
    private  String dataBaseId = "test";
    private String dataBasePw = "dngmadl14";
    private Connection connection;
    private Statement statement;
    private ResultSet resultSet;
    String query = "";

    public memberDAO() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection(url,dataBaseId,dataBasePw);
            statement = connection.createStatement();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public boolean isId(String id)  {
        query = "select * from member where id='"+id+"'";
        try {
            resultSet = statement.executeQuery(query);
            if(resultSet.next()) // 아이디 존재
                return true;
            else
                return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
        }
    public boolean isSchoolNumber(String schoolNumber){
        query = "select * from member where Email='"+schoolNumber+"'";
        try {
            resultSet = statement.executeQuery(query);
            if (resultSet.next())  // 아이디 존재
                return true;
        else
                return false;

        } catch (Exception e){
            e.printStackTrace();
        }
        return true;
    }

    public boolean isLogin(String id ,String pw){
        query = "select * from member where id ='"+id+"' and pw='"+pw+"'";
        try {
            resultSet = statement.executeQuery(query);
            if(resultSet.next()){//db에서 아이디랑 비밀번호 찾음
                return true;
            }else{
                return false;
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return true;
    }
    public boolean signUp(memberDTO dto){
        query = "insert into member values('"+ dto.getId()+"','"+dto.getPw()+"','"+dto.getName()+"','"+dto.getShoolNumber()+"')";
        String query2 = "select * from webinfo";
        int memberNum =0;
        int resultNum = 0;
        try{
            resultNum = statement.executeUpdate(query);
        if (resultNum == 1) {
            resultSet = statement.executeQuery(query2);
            while (resultSet.next()){
                memberNum = resultSet.getInt("member");
            }
            memberNum += 1;
            String query3 = "update webinfo set member ="+memberNum;
            statement.executeUpdate(query3);
            System.out.println("데이터 베이스에 입력 성공");
            return true;
        }else {
            System.out.println("데이터 베이스에 입력 실패");
            return false;
        }
            }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
}
