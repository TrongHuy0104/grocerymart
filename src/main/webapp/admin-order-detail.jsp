<%-- 
    Document   : admin
    Created on : Nov 21, 2023, 4:14:02 PM
    Author     : Trong Huy
--%>

<%@page import="java.util.*"%>
<%@page import="entity.*" %>
<%@page import="dataAccess.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    OrderDAO orderDao = new OrderDAO();
    UserDAO userDao = new UserDAO();
    DAO dao = new DAO();
    String  o_id = request.getParameter("id");
    
    Order o = orderDao.getOrderByOrderID(o_id);
    List<Order> orderItems = null;
    orderItems = orderDao.getAllOrderDetail(o.getOrderId());
    double total = dao.getTotalOrderPrice(orderItems);
    User user = (User) request.getSession().getAttribute("admin");
    User tempUser = new User();
    tempUser.setId(o.getUid());
    User u = userDao.selectById(tempUser);
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Admin|Grocerymart</title>
        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="76x76" href="./assets/favicon/apple-touch-icon.png" />
        <link rel="icon" type="image/png" sizes="32x32" href="./assets/favicon/favicon-32x32.png" />
        <link rel="icon" type="image/png" sizes="16x16" href="./assets/favicon/favicon-16x16.png" />
        <link rel="manifest" href="./assets/favicon/site.webmanifest" />
        <link rel="mask-icon" href="./assets/favicon/safari-pinned-tab.svg" color="#5bbad5" />
        <meta name="msapplication-TileColor" content="#da532c" />
        <meta name="theme-color" content="#ffffff" />
        <!-- Fonts -->
        <link rel="stylesheet" href="./assets/fonts/stylesheet.css" />
        <!-- Stylesheets -->
        <link rel="stylesheet" href="./assets/css/main.css" />
        <link rel="stylesheet" href="./assets/css/admin.css" />
        <!-- Scripts -->
        <script src="./assets/js/scripts.js"></script>
    </head>
    <body>
        <%
        if(user == null) {
        %>
        <h3 style='color:crimson; font-size: 30px; font-weight: 500; text-align: center'>You are not logged into the system! <a href='sign-in.jsp'>Sign In</a></h3>")
        <%} else {%>   
        <!-- Sidebar -->
        <div class="admin-sidebar">
            <!-- Logo -->
            <a href="customer.jsp" class="logo top-bar__logo admin-logo">
                <img src="./assets/icons/logo.svg" alt="grocerymart" class="logo__img top-bar__logo-img" />
                <h1 class="logo__title top-bar__logo-title">grocerymart</h1>
            </a>
            <h3 class="sidebar__heading">APPLICATION</h3>
            <ul class="sidebar__list">
                <li class="sidebar__item">
                    <a href="customer.jsp" class="sidebar__link">
                        <svg
                            fill="rgb(143, 159, 188)"
                            xmlns="http://www.w3.org/2000/svg"
                            height="1em"
                            viewBox="0 0 448 512"
                            >
                        <path
                            d="M304 128a80 80 0 1 0 -160 0 80 80 0 1 0 160 0zM96 128a128 128 0 1 1 256 0A128 128 0 1 1 96 128zM49.3 464H398.7c-8.9-63.3-63.3-112-129-112H178.3c-65.7 0-120.1 48.7-129 112zM0 482.3C0 383.8 79.8 304 178.3 304h91.4C368.2 304 448 383.8 448 482.3c0 16.4-13.3 29.7-29.7 29.7H29.7C13.3 512 0 498.7 0 482.3z"
                            />
                        </svg>

                        Customer</a
                    >
                </li>
                <li class="sidebar__item">
                    <a href="admin.jsp" class="sidebar__link">
                        <svg
                            fill="rgb(143, 159, 188)"
                            xmlns="http://www.w3.org/2000/svg"
                            height="1em"
                            viewBox="0 0 448 512"
                            >
                        <path
                            d="M304 128a80 80 0 1 0 -160 0 80 80 0 1 0 160 0zM96 128a128 128 0 1 1 256 0A128 128 0 1 1 96 128zM49.3 464H398.7c-8.9-63.3-63.3-112-129-112H178.3c-65.7 0-120.1 48.7-129 112zM0 482.3C0 383.8 79.8 304 178.3 304h91.4C368.2 304 448 383.8 448 482.3c0 16.4-13.3 29.7-29.7 29.7H29.7C13.3 512 0 498.7 0 482.3z"
                            />
                        </svg>

                        Admin</a
                    >
                </li>
                <li class="sidebar__item">
                    <a href="admin-product.jsp" class="sidebar__link">
                        <svg
                            fill="rgb(143, 159, 188)"
                            xmlns="http://www.w3.org/2000/svg"
                            height="1em"
                            viewBox="0 0 512 512"
                            >
                        <!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                        <path
                            d="M326.3 218.8c0 20.5-16.7 37.2-37.2 37.2h-70.3v-74.4h70.3c20.5 0 37.2 16.7 37.2 37.2zM504 256c0 137-111 248-248 248S8 393 8 256 119 8 256 8s248 111 248 248zm-128.1-37.2c0-47.9-38.9-86.8-86.8-86.8H169.2v248h49.6v-74.4h70.3c47.9 0 86.8-38.9 86.8-86.8z"
                            />
                        </svg>

                        Product</a
                    >
                </li>
                <li class="sidebar__item sidebar__item--active">
                    <a href="admin-order.jsp" class="sidebar__link">
                        <svg
                            fill="rgb(143, 159, 188)"
                            xmlns="http://www.w3.org/2000/svg"
                            height="1em"
                            viewBox="0 0 576 512"
                            >
                        <!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                        <path
                            d="M0 24C0 10.7 10.7 0 24 0H69.5c22 0 41.5 12.8 50.6 32h411c26.3 0 45.5 25 38.6 50.4l-41 152.3c-8.5 31.4-37 53.3-69.5 53.3H170.7l5.4 28.5c2.2 11.3 12.1 19.5 23.6 19.5H488c13.3 0 24 10.7 24 24s-10.7 24-24 24H199.7c-34.6 0-64.3-24.6-70.7-58.5L77.4 54.5c-.7-3.8-4-6.5-7.9-6.5H24C10.7 48 0 37.3 0 24zM128 464a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zm336-48a48 48 0 1 1 0 96 48 48 0 1 1 0-96z"
                            />
                        </svg>

                        Order</a
                    >
                </li>
            </ul>
        </div>
        <!-- Navbar -->
        <nav class="admin-navbar">
            <ul class="admin-navbar__list">
                <li class="admin-navbar__item">
                    <a href="#!" class="admin-navbar__link">
                        <img
                            src="https://templates.iqonic.design/datum/html/assets/images/user/1.jpg"
                            alt=""
                            class="admin-navbar__img"
                            />
                        <span class="admin-navbar__text"><%=user.getFullName()%></span>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- Main -->
        <main class="main">
            <div class="admin-top">
                <h1 class="admin__heading">Order Details</h1>
            </div>
            <div class="row">
                <div class="col-4">
                    <div class="order-left">
                        <div class="order-left__block">
                            <h3 class="order-left__heading">Order Info</h3>
                            <div class="order-left__item">
                                <span class="order-left__item-text">ID</span>
                                <span class="order-left__item-text"><%=o.getOrderId()%></span>
                            </div>
                            <div class="order-left__item">
                                <span class="order-left__item-text">Date</span>
                                <span class="order-left__item-text"><%=o.getDate()%></span>
                            </div>
                            <div class="order-left__item">
                                <span class="order-left__item-text">Payment method</span>
                                <span class="order-left__item-text">COD</span>
                            </div>
                            <div class="order-left__item">
                                <span class="order-left__item-text">Status</span>
                            <%
                            if(o.getStatus() == 0) {
                            %>
                            <p class="table__data order-left__item-text" style="color: red; font-weight: 600">Canceled</p>
                            <%} else if (o.getStatus() == 1) {%>
                            <p class="table__data order-left__item-text" style="color: #db7e06; font-weight: 600">Pending</p>
                            <% } else if (o.getStatus() == 2) {%>
                            <p class="table__data order-left__item-text" style="color: #db7e06; font-weight: 600">Confirmed</p>
                            <% } else if (o.getStatus() == 3) {%>
                            <p class="table__data order-left__item-text" style="color: #db7e06; font-weight: 600">Packed</p>
                            <% } else if (o.getStatus() == 4) {%>
                            <p class="table__data order-left__item-text" style="color: #db7e06; font-weight: 600">In Transit</p>
                            <%} else {%>
                            <p class="table__data order-left__item-text" style="color: #3cb72c; font-weight: 600">Completed</p>
                            <%}%>
                            </div>
                        </div>
                    </div>
                    <div class="order-left">
                        <div class="order-left__block">
                            <h3 class="order-left__heading">Customer Detail</h3>
                            <div class="order-left__item">
                                <span class="order-left__item-text">Name</span>
                                <span class="order-left__item-text"><%=u.getFullName()%></span>
                            </div>
                            <div class="order-left__item">
                                <span class="order-left__item-text">Phone</span>
                                <span class="order-left__item-text"><%=u.getPhone()%></span>
                            </div>
                            <div class="order-left__item">
                                <span class="order-left__item-text">Email</span>
                                <span class="order-left__item-text"><%=u.getEmail()%></span>
                            </div>
                            <div class="order-left__item">
                                <span class="order-left__item-text">Address</span>
                                <span class="order-left__item-text"><%=u.getDeliveryAddress()%></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-8">
                    <div class="order-right">
                        <h3 class="order-right__heading">Order Items</h3>
                        <table>
                            <thead>
                                <tr class="order-right__table-heading">
                                    <th style="width: 100%; text-align: left">Product</th>
                                    <th style="min-width: 150px; text-align: right">Quantity</th>
                                    <th style="min-width: 150px; text-align: right">Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                
                                
                                    for(Order orderItem : orderItems) {

                                    String url;
                                    String root = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
                                    + request.getContextPath();
                                    String avatarURL= orderItem.getpThumb();
                                    if (avatarURL != null) {
                                    url = root + "/assets/img/product/" + avatarURL;
                                    } else url = "";
                                %>
                                <tr>
                                    <td>
                                        <div class="table__user">
                                            <img
                                                src="<%=url%>"
                                                alt=""
                                                class="table__user-product"
                                                />
                                            <div class="table__user-info">
                                                <span class="table__user-name"><%=orderItem.getpName()%></span>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="table__data" style="text-align: right"><%=orderItem.getQunatity()%></p>
                                    </td>
                                    <td>
                                        <p class="table__data" style="text-align: right">$<%=orderItem.getpPrice() * orderItem.getQunatity()%></p>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                            <div class="order-right__price">Shipping: <span>$10.00 </span></div>
                            <div class="order-right__price">Total: <span>$<%=total + 10.00%> </span></div>
                    </div>
                </div>
            </div>




        </main>
        <%}%>  
    </body>
</html>

