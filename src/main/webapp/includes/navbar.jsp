<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 11/03/2024
  Time: 02:37
  To change this template use File | Settings | File Templates.
--%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="../shop.jsp">E-commerce Shop</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="../shop.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp">Cart <span class="badge badge-danger">${cart_list.size()}</span></a>
                </li>
                <%if (auth != null){%>
                <li class="nav-item">
                    <a class="nav-link disabled" href="orders.jsp">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="log-out">Logout</a>
                </li>
                <%} else {%>
                <li class="nav-item">
                    <a class="nav-link disabled" href="signup.jsp">SignUp</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="login.jsp">Login</a>
                </li>
                <%}%>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
