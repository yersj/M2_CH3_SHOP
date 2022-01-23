package servlets;

import db.DBManager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "login", value = "/login")
public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String email=request.getParameter("email");
       String password=request.getParameter("password");

        String f;
        String s=DBManager.getUser(email,password);
       if(!s.equals("")){
           System.out.println(s);
           request.setAttribute("username",s );
           request.getRequestDispatcher("/adminPanel.jsp").forward(request,response);
        }
       else{
           System.out.println("error");
           f="Incorrect email and password";
           request.setAttribute("username",f);
           request.getRequestDispatcher("/login.jsp").forward(request,response);
       }

    }
}
