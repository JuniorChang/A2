package com.jr.logindemo.controller;

import com.jr.logindemo.model.LoginModel;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        System.out.println("username: " + username);
        System.out.println("password: " + password);

        LoginModel lm = new LoginModel();
        lm.setUsername(username);
        lm.setPassword(password);

        int x = lm.loggingIn();

        if (x==1){
            System.out.println("Admin login successful");
            HttpSession session = req.getSession(true);
            session.setAttribute("role", "admin");
            resp.sendRedirect("loginSuccess.jsp");
        }
        else if (x==2){
            System.out.println("User login successful");
            HttpSession session = req.getSession(true);
            session.setAttribute("role", "user");
            resp.sendRedirect("loginSuccess.jsp");
        }
        else {
            System.out.println("Login failed");
            resp.sendRedirect("loginError.jsp");
        }


    }
}
