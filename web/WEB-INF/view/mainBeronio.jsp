<%-- 
    Document   : main
    Created on : Mar 21, 2024, 9:22:58 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    <style>
        html {
          height: 100%;
        }
        body {
          margin:0;
          padding:0;
          font-family: sans-serif;
          background-image: url(https://i.imgur.com/DTUC33H.jpg);
          background-size: cover;
          background-repeat: no-repeat; 
          background-position: center; 
          background-attachment: fixed; 
        }

        .login-box {
          position: absolute;
          top: 50%;
          left: 50%;
          width: 400px;
          padding: 40px;
          transform: translate(-50%, -50%);
          background: rgba(0,0,0,.5);
          box-sizing: border-box;
          box-shadow: 0 15px 25px rgba(0,0,0,.6);
          border-radius: 10px;
          text-align: center;
        }

        .login-box h2 {
          margin: 0 0 30px;
          padding: 0;
          color: #fff;
          text-align: center;
        }

        .login-box .user-box {
          position: relative;
        }

        .login-box .user-box input {
          width: 100%;
          padding: 10px 0;
          font-size: 16px;
          color: #fff;
          margin-bottom: 30px;
          border: none;
          border-bottom: 1px solid #fff;
          outline: none;
          background: transparent;
        }
        .login-box .user-box label {
          position: absolute;
          top:0;
          left: 0;
          padding: 10px 0;
          font-size: 16px;
          color: #fff;
          pointer-events: none;
          transition: .5s;
        }

        .login-box .user-box input:focus ~ label,
        .login-box .user-box input:valid ~ label {
          top: -20px;
          left: 0;
          color: #e73700;
          font-size: 12px;
        }

        .login-box form button {
            width: 100%;
            height: 54px;
            padding: 8px;
            font-size: 0.8rem;
            font-weight: 900;
            color: #ff4655;
            text-align: center;
            text-transform: uppercase;
            text-decoration: none;
            box-shadow: 0 0 0 1px inset rgba(236, 232, 225, 0.3);
            position: relative;
            margin: 10px 0;
            display: block;
            background: #0f1923; /* Dark background color */
            border: 1px solid #ff4655; /* Border color */
            overflow: hidden;
            transition: background-color 0.3s ease; /* Add transition for background color change */
        }

        .login-box form button:hover {
            background-color: #ff4655; /* Red background color on hover */
            color: #ece8e1; /* Text color on hover */
        }

        .login-box form button .bg {
            left: -5%;
            position: absolute;
            background: #ff4655;
            width: 0;
            height: 100%;
            z-index: -1; /* Adjust z-index */
            transition: 0.3s ease-out all;
            transform: skewX(-10deg); /* Add skew transformation */
        }

        .login-box form button .text {
            z-index: 1; /* Adjust z-index */
            position: relative;
        }

        .login-box form button span.base {
            box-sizing: border-box;
            position: absolute;
            z-index: 2;
            width: 100%;
            height: 100%;
            left: 0;
            border: 1px solid #ff4655;
        }

        .login-box form button span.base:before {
            content: "";
            width: 2px;
            height: 2px;
            left: -1px;
            top: -1px;
            background: #0f1923;
            position: absolute;
            transition: 0.3s ease-out all;
        }

        .login-box form button span.text {
            z-index: 4;
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
        }

        .login-box form button span.text:after {
            content: "";
            width: 4px;
            height: 4px;
            right: 0;
            bottom: 0;
            background: #0f1923;
            position: absolute;
            transition: 0.3s ease-out all;
            z-index: 5;
        }

        .login-box form button:hover span.bg {
            width: 110%;
        }

        .login-box form button:hover span.text:after {
            background: #ece8e1;
        }
</style>
</head>
<body>
    <div class="login-box">
        <h2>LOGIN</h2>
        <form id="loginForm" method="post">
            <div class="user-box">
                <input type="text" name="username" required="">
                <label>Username</label>
            </div>
            <div class="user-box">
                <input type="password" name="password" required="">
                <label>Password</label>
            </div>
            <button type="submit">
                <span class="bg"></span> <!-- Add the .bg span element for background transition -->
                Enter
            </button>
        </form>
    </div>

    <%-- Java code for handling form submission and validation --%>
    <%@page import="java.io.*,java.util.*,javax.servlet.*,javax.servlet.http.*"%>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("Jean".equals(username) && "Beronio".equals(password)) {
            // Redirect to another page upon successful login
            response.sendRedirect("/buttonsBeronio");
        } else if (username != null && password != null) {
            response.sendRedirect("/mainBeronio");
        }
    %>
    
   <script>
    document.oncontextmenu = () => {
        alert("Don't try right-clicking!");
        return false;
    }

    document.onkeydown = e => {
        if (e.key == "F12") {
            alert("Don't try to inspect element");
            return false;
        }
        if (e.ctrlKey && e.key == "u") {
            alert("Don't try to view page sources");
            return false;
        }
        if (e.ctrlKey && e.key == "c") {
            alert("Don't try to copy page element");
            return false;
        }
        if (e.ctrlKey && e.key == "v") {
            alert("Don't try to paste anything to the page");
            return false;
        }
    }
</script>
</body>
</html>
