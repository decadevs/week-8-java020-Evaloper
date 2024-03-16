package com.example.shopping_cart.controller;

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

@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve form data
            String name = request.getParameter("name");
            String category = request.getParameter("category");
            int price = Integer.parseInt(request.getParameter("price"));
            String image = request.getParameter("image");

            // Save product data to the database
            Product product = new Product();
            product.setName(name);
            product.setCategory(category);
            product.setPrice(price);
            product.setImage(image);
            // Create an instance of ProductDao and add the product to the database

            try (Connection con = DbCon.getConnection()) {
                ProductDao productDao = new ProductDao(con);
                boolean result = productDao.addProduct(product);
                System.out.println("Adding product to the database: " + product);
                if (result) {
                    response.sendRedirect("admin_dashboard.jsp?status=success");
                    System.out.println("Product added successfully: " + product);
                } else {
                    response.sendRedirect("admin_dashboard.jsp?status=fail");
                }
            }

    } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}