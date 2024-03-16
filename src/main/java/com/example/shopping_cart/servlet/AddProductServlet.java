package com.example.shopping_cart.servlet;

import com.example.shopping_cart.connection.DbCon;
import com.example.shopping_cart.dao.ProductDao;
import com.example.shopping_cart.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/addProduct")
public class AddProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        double price = Double.parseDouble(request.getParameter("price"));
        String image = request.getParameter("image");

        Product product = new Product();
        product.setName(name);
        product.setCategory(category);
        product.setPrice(price);
        product.setImage(image);

        try (Connection con = DbCon.getConnection()) {
            ProductDao productDao = new ProductDao(con);
            boolean result = productDao.addProduct(product);
            if (result) {
                response.sendRedirect("admin_dashboard.jsp?status=success");
            } else {
                response.sendRedirect("admin_dashboard.jsp?status=fail");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("admin_dashboard.jsp?status=error");
        }
    }
}