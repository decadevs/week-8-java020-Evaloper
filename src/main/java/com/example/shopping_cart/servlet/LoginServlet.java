package com.example.shopping_cart.servlet;

import com.example.shopping_cart.connection.DbCon;
import com.example.shopping_cart.dao.UserDao;
import com.example.shopping_cart.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/user-login")
public class LoginServlet extends HttpServlet {
    private static final long serialVerionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try(PrintWriter out = response.getWriter()){
            String email = request.getParameter("login-email");
            String password = request.getParameter("login-password");

            try {
                UserDao userDao = new UserDao(DbCon.getConnection());
                User user = userDao.userLogin(email, password);

                if(user != null){
                    request.getSession().setAttribute("auth", user);
                    response.sendRedirect("index.jsp");
                } else{
                    out.println("User login failed");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            out.println(email + password);
        }
    }
}