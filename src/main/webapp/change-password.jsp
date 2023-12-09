<%-- 
    Document   : change-password
    Created on : Nov 19, 2023, 10:12:23 PM
    Author     : Trong Huy
--%>
<%@page import="entity.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Reset Password | Grocery Mart</title>
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
        <!-- Styles -->
        <link rel="stylesheet" href="./assets/css/main.css" />
        <!-- Scripts -->
        <script src="./assets/js/scripts.js"></script>
        <style>
            .form__error {
                font-size: 1.6rem;
                color: red;
                margin-top: 20px;
                font-weight: 500;
                align-self: flex-start;
                margin-left: 15px;
            }
        </style>
    </head>
    <body>
        <%
                Object obj = session.getAttribute("user");
                User user = null;
                if (obj!=null)
                        user = (User)obj;		
                        if(user==null){		
        %>
        <h1>You are not logged into the system. Please return to the home page!</h1>
        <p class="auth__text">
            <a href="Home" class="auth__link auth__text-link">Back to home page</a>
        </p>
        <%
                }else {
        %>
        <!-- Main -->
        <main class="auth">
            <!-- Auth Intro -->
            <div class="auth__intro d-md-none">
                <img src="./assets/img/auth/forgot-password.png" alt="" class="auth__intro-img" />
            </div>
            <!-- Auth Content -->
            <div class="auth__content">
                <div class="auth__content-inner">
                    <!-- Logo -->
                    <a href="Home" class="logo">
                        <img src="./assets/icons/logo.svg" alt="grocerymart" class="logo__img top-bar__logo-img" />
                        <h2 class="logo__title top-bar__logo-title">grocerymart</h2>
                    </a>
                    <h1 class="auth__heading">Update your password</h1>
                    <!--<p class="auth__desc">Enter your email and we'll send you a link to reset your password.</p>-->
                    <p class="form__error">${note == "" ? "" : note}</p>
                    <p class="form__error">${error == "" ? "" : error}</p>
                    <form action="user" method="POST" class="form auth__form" id="sign-up-form">
                        <input type="hidden" name="action" value="change-password"/>
                        <div class="form__group">
                            <div class="form__text-input">
                                <input
                                    id="current-password"
                                    type="password"
                                    placeholder="Current password"
                                    class="form__input"
                                    name="current_password"
                                    rules="required|minLength:6"
                                    />
                                <img
                                    src="./assets/icons/eye.svg"
                                    alt=""
                                    class="form__input-icon"
                                    id="toggleCurrentPassword"
                                    />
                            </div>
                            <span class="form__message"></span>
                        </div>
                        <div class="form__group">
                            <div class="form__text-input">
                                <input
                                    id="password"
                                    type="password"
                                    placeholder="New Password"
                                    class="form__input"
                                    name="new_password"
                                    rules="required|minLength:6"
                                    />
                                <img
                                    src="./assets/icons/eye.svg"
                                    alt=""
                                    class="form__input-icon"
                                    id="togglePassword"
                                    />
                            </div>
                            <span class="form__message"></span>
                        </div>
                        <div class="form__group">
                            <div class="form__text-input">
                                <input
                                    id="password_confirmation"
                                    type="password"
                                    placeholder="Confirm new password"
                                    class="form__input"
                                    name="password_confirmation"
                                    rules="required|confirm:#password"
                                    />
                                <img
                                    src="./assets/icons/eye.svg"
                                    alt=""
                                    class="form__input-icon"
                                    id="togglePasswordConfirm"
                                    />
                            </div>
                            <span class="form__message"></span>
                        </div>
                        <div class="form__group auth__btn-group">
                            <button class="btn btn--primary auth__btn form__submit-btn">Change password</button>
                        </div>
                    </form>
                    <p class="auth__text">
                        <a href="Home" class="auth__link auth__text-link">Back to home page</a>
                    </p>
                </div>
            </div>
            <%} %>
        </main>
        <script>
            window.dispatchEvent(new Event("template-loaded"));
        </script>
        <script src="./assets/js/validator.js"></script>
        <script>
            new Validator("#sign-up-form");
        </script>
        <script src="assets/js/theme.js" type="text/javascript"></script>
    </body>
</html>

