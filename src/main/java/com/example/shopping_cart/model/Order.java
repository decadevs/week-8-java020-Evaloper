package com.example.shopping_cart.model;


import lombok.Data;

@Data
public class Order extends Product{
    private int orderId;
    private int uid;
    private int quantity;
    private String date;

    public Order() {
    }

    public Order(int orderId, int uid, int quantity, String date) {
        super();
        this.orderId = orderId;
        this.uid = uid;
        this.quantity = quantity;
        this.date = date;
    }

    public Order(int uid, int quantity, String date) {
        super();
        this.uid = uid;
        this.quantity = quantity;
        this.date = date;
    }

}
