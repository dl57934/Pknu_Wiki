package controler;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controler" ,urlPatterns = {"/controller"})
public class controller extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        process(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        process(request, response);
    }

    private void process(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
       String action = request.getParameter("action");
       switch (action) {
           case "login":
               login(request, response);
               break;
           case "signUp":
               break;
       }
    }
    private void login(HttpServletRequest request, HttpServletResponse response){
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        System.out.println("email: "+email+", password: "+password);
    }

}
