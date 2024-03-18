<%@ page import="com.example.shopping_cart.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if(auth != null){
        request.setAttribute("auth", auth);
    }
%>
<html lang="en">
<head>
    <%--    <meta charset="utf-8">--%>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        body{
            margin: 100px;
        }

        .head-link{
            text-decoration: none;
            color: #333333;
        }

        .head-link:hover {
            color: #ff47d9;
        }
        .login-form {
            width: 340px;
            margin: 100px auto;
            font-size: 15px;
        }
        .login-form form {
            margin-bottom: 15px;
            background: #f7f7f7;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            border: 1px solid #c0bdbd30;
            padding: 30px;
        }
        .login-form h2 {
            margin: 0 0 15px;
        }
        .form-control, .btn {
            min-height: 38px;
            border-radius: 2px;
        }
        .btn {
            font-size: 15px;
            font-weight: bold;
        }

        .cart{
            background-color: #ff47d9;
        }

        .cart a{
            text-decoration: none;
            color: #fff;
        }
    </style>
</head>
<body>
<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 11/03/2024
  Time: 02:37
  To change this template use File | Settings | File Templates.
--%>
<a href="store.jsp" class="head-link">Back to Home Page</a>
<div class="login-form">
    <form action="/user-login" method="post">
        <h2 class="text-center">Log in</h2>
        <div class="form-group">
            <input type="text" class="form-control" name="login-email" placeholder= "Email" required="required">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="login-password" placeholder="Password" required="required">
        </div>
        <div class="form-group">
            <a href="product.jsp"> <input type="submit" class="btn btn-block cart" value="Login"></a>
        </div>
        <div class="clearfix">
            <label class="float-left form-check-label"><a href="admin_login.jsp">Admin Login</a></label>
            <a href="#" class="float-right">Forgot Password?</a>
        </div>
    </form>
    <p class="text-center"><a href="signup.jsp">Create an Account</a></p>
</div>
</body>
</html>

