<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 13/03/2024
  Time: 00:55
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <title>Bootstrap Sign up Form with Icons</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        body {
            color: #fff;
            background: #ff47d9;
            font-family: 'Roboto', sans-serif;
        }
        .form-control {
            font-size: 15px;
        }
        .form-control, .form-control:focus, .input-group-text {
            border-color: #e1e1e1;
        }
        .form-control, .btn {
            border-radius: 3px;
        }
        .signup-form {
            width: 400px;
            margin: 0 auto;
            padding: 30px 0;
        }
        .signup-form form {
            color: #999;
            border-radius: 3px;
            margin-bottom: 15px;
            background: #fff;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }
        .signup-form h2 {
            color: #333;
            font-weight: bold;
            margin-top: 0;
        }
        .signup-form hr {
            margin: 0 -30px 20px;
        }
        .signup-form .form-group {
            margin-bottom: 20px;
        }
        .signup-form label {
            font-weight: normal;
            font-size: 15px;
        }
        .signup-form .form-control {
            min-height: 38px;
            box-shadow: none !important;
        }
        .signup-form .input-group-addon {
            max-width: 42px;
            text-align: center;
        }
        .signup-form .btn, .signup-form .btn:active {
            font-size: 16px;
            font-weight: bold;
            background: #ff47d9 !important;
            border: none;
            min-width: 140px;
        }
        .signup-form .btn:hover, .signup-form .btn:focus {
            background: #ff47d9 !important;
        }
        .signup-form a {
            color: #fff;
            text-decoration: underline;
        }
        .signup-form a:hover {
            text-decoration: none;
        }
        .signup-form form a {
            color: #ff47d9;
            text-decoration: none;
        }
        .signup-form form a:hover {
            text-decoration: underline;
        }
        .signup-form .fa {
            font-size: 21px;
        }
        .signup-form .fa-paper-plane {
            font-size: 18px;
        }
        .signup-form .fa-check {
            color: #fff;
            left: 17px;
            top: 18px;
            font-size: 7px;
            position: absolute;
        }

        .admin-signup-btn > a:hover{
            text-decoration: none;
            color: #ff47d9;
        }

    </style>
</head>
<body>
<div class="signup-form">
    <a href="store.jsp" class="head-link">Back to Home Page</a>
    <form action="signup" method="post">
        <h2>Sign Up</h2>
        <p>Please fill in this form to create an account!</p>
        <hr>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-prepend">
					<span class="input-group-text">
						<span class="fa fa-user"></span>
					</span>
                </div>
                <input type="text" class="form-control" name="firstName" placeholder="First Name" required="required">
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-prepend">
					<span class="input-group-text">
						<span class="fa fa-user"></span>
					</span>
                </div>
                <input type="text" class="form-control" name="lastName" placeholder="Last Name" required="required">
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fa fa-paper-plane"></i>
					</span>
                </div>
                <input type="email" class="form-control" name="email" placeholder="Email Address" required="required">
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-prepend">
					<span class="input-group-text">
						<i class="fa fa-lock"></i>
					</span>
                </div>
                <input type="text" class="form-control" name="password" placeholder="Password" required="required">
            </div>
        </div>
        <%--        <div class="form-group">--%>
        <%--            <div class="input-group">--%>
        <%--                <div class="input-group-prepend">--%>
        <%--					<span class="input-group-text">--%>
        <%--						<i class="fa fa-lock"></i>--%>
        <%--						<i class="fa fa-check"></i>--%>
        <%--					</span>--%>
        <%--                </div>--%>
        <%--                <input type="text" class="form-control" name="password" placeholder="Confirm Password" required="required">--%>
        <%--            </div>--%>
        <%--        </div>--%>
        <div class="form-group">
            <label class="form-check-label"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg" value="Signup">Sign Up</button>

        </div>
        <div class="admin-signup-btn "><a type="submit" href="admin_signup.jsp" class="text-black-50">Click to Sign Up as Admin</a></div>
    </form>
    <div class="text-center">Already have an account? <a href="login.jsp">Login here</a></div>
</div>
</body></body>
</html>
