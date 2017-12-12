package controler;

import DAO.memberDAO;
import DAO.writingDAO;
import DTO.memberDTO;
import DTO.writingDTO;
import com.github.rjeschke.txtmark.Processor;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.SQLException;


@WebServlet(name = "controller" ,urlPatterns = {"/controller"})
public class controller extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        process(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        process(request, response);
    }

    private void process(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
       String action = request.getParameter("action");
       switch (action) {
           case "login":
               login(request, response);
               break;
           case "signUp":
               SignUp(request,response);
               break;
           case "logOut":
               logOut(request,response);
               break;
           case "search":
               search(request, response);
               break;
           case"writing":
                writing(request,response);
                break;
           case"modify":
                modify(request,response);
                break;
           case"preview":
                preview(request,response);
                break;
       }
    }
    private void preview(HttpServletRequest request, HttpServletResponse response){

    }
     private void modify(HttpServletRequest request, HttpServletResponse response){
         String title = request.getParameter("title");
         try {
             title = URLEncoder.encode(title, "UTF-8");
             response.sendRedirect("PknuWiki/view/modifyView.jsp?title="+title);
         } catch (IOException e) {
             e.printStackTrace();
         }
     }
     private void search(HttpServletRequest request,HttpServletResponse response){
        String searchInfo = request.getParameter("searchInfo");
         try {
             searchInfo = URLEncoder.encode(searchInfo, "UTF-8");
         } catch (IOException e) {
             e.printStackTrace();
         }
     }
     private void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        memberDAO dao = new memberDAO();
        String id = request.getParameter("id");
        HttpSession httpSession = request.getSession();
        String password = request.getParameter("password");
        System.out.println("id: "+id+", password: "+password);
        if(dao.isLogin(id,password)){
            System.out.println("로그인 성공");
            httpSession.setAttribute("id",id);
            httpSession.setAttribute("loginCheck",true);
                response.sendRedirect("PknuWiki/view/main.jsp");
        }else{
            httpSession.setAttribute("loginCheck",false);
            response.sendRedirect("PknuWiki/view/login.jsp");
        }
    }
     private void SignUp(HttpServletRequest request, HttpServletResponse response) throws IOException {
     response.setContentType("text/plain;charset=UTF-8");
    memberDAO dao = new memberDAO();
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String pw = request.getParameter("password");
    String pwCheck = request.getParameter("passwordCheck");
    String schoolNumber = request.getParameter("schoolNumber");
     memberDTO dto = new memberDTO(id,pw,name,schoolNumber);
         response.setContentType("text/html;charset=utf-8");
         PrintWriter write = response.getWriter();
         write.println("<script type='text/javascript'>");
    if(dao.isId(id)){
        System.out.println("동일한 아이디 찾음");
        write.println("alert('이미 존재하는 아이디입니다.');");
        write.println("history.back();");
        write.println("</script>");
        write.flush();
        write.close();
    }else{
        if(pw.equals(pwCheck)) {
            if(dao.signUp(dto)) {
                System.out.println("회원가입 완료");
                write.println("alert('부경위키에 환영합니다.');window.location.href='http://localhost:3000/PknuWiki/view/main.jsp';");
                write.println("");
                write.println("</script>");
                write.flush();
                write.close();
            }else{
                response.sendRedirect("PknuWiki/view/signUp.jsp");
            }
        }else{
            write.println("alert('비밀번호가 일치하지 않습니다.');");
            write.println("history.back();");
            write.println("</script>");
            write.flush();
             }
        }
     }
     public void logOut(HttpServletRequest request, HttpServletResponse response){
        System.out.println(request.getParameter("action"));
        HttpSession session = request.getSession();
        session.setAttribute("loginCheck",null);
        session.setAttribute("id","");
        session.setAttribute("oneLogin",null);
         try {
             response.sendRedirect("PknuWiki/view/main.jsp");
         } catch (IOException e) {
             e.printStackTrace();
         }
     }
     public void writing(HttpServletRequest request, HttpServletResponse response) throws IOException {
         HttpSession session = request.getSession();
         System.out.println(request.getParameter("action"));
         System.out.println(request.getParameter("title"));
         System.out.println(request.getParameter("body"));
         String title = "#"+request.getParameter("title");
         String body = request.getParameter("body");
         String writer = (String)session.getAttribute("id");
         System.out.println(title + body);
         writingDTO dto = new writingDTO(title, body, writer);
         writingDAO dao = new writingDAO();
         try {
             if(dao.setWriting(dto) == true){
                    title = URLEncoder.encode(title, "UTF-8");
                    response.sendRedirect("http://localhost:3000/PknuWiki/view/view.jsp?title="+title);
             }else {
                 response.setContentType("text/html;charset=utf-8");
                 PrintWriter write = response.getWriter();
                 write.println("<script type='text/javascript'>");
                 write.println("alert('이미 존재하는 글입니다.');");
                 write.println("history.back();");
                 write.println("</script>");
                 write.flush();
             }
         } catch (SQLException e) {
             e.printStackTrace();
         }
     }

}
