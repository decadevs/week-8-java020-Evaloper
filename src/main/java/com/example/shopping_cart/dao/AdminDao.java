package com.example.shopping_cart.dao;

import com.example.shopping_cart.model.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDao {
    private Connection connection;

    public AdminDao(Connection connection) {
        this.connection = connection;
    }

    public void addAdmin(Admin admin) {
        String sql = "INSERT INTO admins (fullName, email, password, token) VALUES (?, ?, ?, ?)";

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, admin.getFullName());
            preparedStatement.setString(2, admin.getEmail());
            preparedStatement.setString(3, admin.getPassword());
            preparedStatement.setString(4, admin.getToken());

            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Admin added successfully.");
            } else {
                System.out.println("Failed to add admin.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Error adding admin: " + e.getMessage());
        }
    }

    public Admin adminLogin(String email, String password, String token) {
        Admin admin = null;
        String query = "SELECT * FROM admins WHERE email=? AND password=? AND token=?";
        try (PreparedStatement pst = connection.prepareStatement(query)) {
            pst.setString(1, email);
            pst.setString(2, password);
            pst.setString(3, token);
            try (ResultSet rs = pst.executeQuery()) {
                if (rs.next()) {
                    admin = new Admin();
                    admin.setId(rs.getInt("id"));
                    admin.setFullName(rs.getString("fullName"));
                    admin.setEmail(rs.getString("email"));
                    admin.setToken(rs.getString("token"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Error: " + e.getMessage());
        }
        return admin;
    }


}
