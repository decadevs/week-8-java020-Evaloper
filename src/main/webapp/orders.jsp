<%@ page import="com.example.shopping_cart.model.User" %>
<%@ page import="com.example.shopping_cart.model.Cart" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.shopping_cart.dao.ProductDao" %>
<%@ page import="com.example.shopping_cart.connection.DbCon" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="com.example.shopping_cart.model.Order" %>
<%@ page import="com.example.shopping_cart.dao.OrderDao" %><%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 11/03/2024
  Time: 02:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    DecimalFormat dcf = new DecimalFormat("#.##");
    request.setAttribute("dcf", dcf);
    User auth = (User) request.getSession().getAttribute("auth");
    List<Order> orders = null;
    if (auth != null) {
        request.setAttribute("person", auth);
        OrderDao orderDao  = new OrderDao(DbCon.getConnection());
        orders = orderDao.userOrders(auth.getId());
    }else{
        response.sendRedirect("login.jsp");
    }
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
        request.setAttribute("cart_list", cart_list);
    }

%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/includes/head.jsp"%>
    <title>E-Commerce Cart</title>
</head>
<body>
<%@include file="/includes/navbar.jsp"%>
<div class="container">
    <div class="card-header my-3">All Orders</div>
    <table class="table table-light">
        <thead>
        <tr>
            <th scope="col">Date</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col">Quantity</th>
            <th scope="col">Price</th>
            <th scope="col">Cancel</th>
        </tr>
        </thead>
        <tbody>

        <%
            if(orders != null){
                for(Order o:orders){%>
        <tr>
            <td><%=o.getDate() %></td>
            <td><%=o.getName() %></td>
            <td><%=o.getCategory() %></td>
            <td><%=o.getQuantity() %></td>
            <td><%=dcf.format(o.getPrice()) %></td>
            <td><a class="btn btn-sm btn-danger" href="cancel-order?id=<%=o.getOrderId()%>">Cancel Order</a></td>
        </tr>
        <%}
        }
        %>

        </tbody>
    </table>
</div>
<%@include file="/includes/footer.jsp"%>
</body>
</html>