package com.example.shopping_cart.model;

import lombok.Data;

@Data
public class Admin {
    private int id;
    private  String fullName;
    private String email;
    private String password;
    private String token;

    public Admin() {

    }

    public Admin(String fullName, String email, String password, String token) {
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.token = token;
    }

    @Override
    public String toString() {
        return "Admin{" +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", token='" + token + '\'' +
                '}';
    }
}
