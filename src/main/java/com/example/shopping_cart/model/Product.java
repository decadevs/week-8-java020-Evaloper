package com.example.shopping_cart.model;

import lombok.Data;

import java.sql.Blob;

@Data
public class Product {
    private int id;
    private String name;
    private String category;
    private int price;
    private String image;

    public Product() {
    }

    public Product(int id, String name, String category, int price, String image) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.price = price;
        this.image = image;
    }

    public Product( String name, String category, int price, String image) {
        this.name = name;
        this.category = category;
        this.price = price;
        this.image = image;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", category='" + category + '\'' +
                ", price=" + price +
                ", image=" + image +
                '}';
    }
}
