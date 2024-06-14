<%-- 
    Document   : button3
    Created on : Apr 6, 2024, 10:49:22 PM
    Author     : talai
--%>

<%-- 
    Document   : button1
    Created on : Mar 25, 2024, 10:50:02 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Secret Message</title>
    <!-- Include Owl Carousel CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">

    <!-- Include jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Include Owl Carousel JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

    <style>
    html {
        height: 100%;
    }

    body {
        margin: 0;
        padding: 0;
        font-family: sans-serif;
        background-image: url(https://i.imgur.com/DTUC33H.jpg);
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        background-attachment: fixed;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .login-box {
        width: 400px;
        padding: 40px;
        background: rgba(0, 0, 0, .5);
        border: 1px solid #ff4655;
        box-sizing: border-box;
        box-shadow: 0 15px 25px rgba(0, 0, 0, .6);
        border-radius: 10px;
        text-align: center;
    }

    .login-box h1,
    .login-box h2,
    .login-box h3 {
        margin: 0 0 30px;
        padding: 0;
        color: #fff;
    }

    .login-box div a {
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
    }

    .login-box div a:hover > p {
        color: #ece8e1;
    }

    .login-box div a > p {
        background: #0f1923;
        color: #ff4655;
        margin: 0;
        height: 54px;
        line-height: 54px;
        box-sizing: border-box;
        z-index: 1;
        position: relative;
        overflow: hidden;
    }

    .login-box div a > p span.base {
        box-sizing: border-box;
        position: absolute;
        z-index: 2;
        width: 100%;
        height: 100%;
        left: 0;
        border: 1px solid #ff4655;
    }

    .login-box div a > p span.base:before {
        content: "";
        width: 2px;
        height: 2px;
        left: -1px;
        top: -1px;
        background: #0f1923;
        position: absolute;
        transition: 0.3s ease-out all;
    }

    .login-box div a > p span.bg {
        left: -5%;
        position: absolute;
        background: #ff4655;
        width: 0;
        height: 100%;
        z-index: 3;
        transition: 0.3s ease-out all;
        transform: skewX(-10deg);
    }

    .login-box div a > p span.text {
        z-index: 4;
        width: 100%;
        height: 100%;
        position: absolute;
        left: 0;
        top: 0;
    }

    .login-box div a > p span.text:after {
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

    .login-box div a:hover span.bg {
        width: 110%;
    }

    .login-box div a:hover span.text:after {
        background: #ece8e1;
    }
    
</style>
</head>
<body>
<%
        // Initialize or retrieve buttonPresses variable from session
        int buttonPresses = 0;
        Object pressesObj = session.getAttribute("buttonPresses");
        if (pressesObj != null) {
            buttonPresses = (int) pressesObj;
        }

        // Check if the button has been pressed
        if (request.getParameter("pressed") != null) {
            // Increment the buttonPresses variable
            buttonPresses++;
            session.setAttribute("buttonPresses", buttonPresses);
            
            // Switch statement to handle different button press cases
            switch (buttonPresses) {
                case 1:
                    out.println("<script>alert('Expect The Unexpected!');</script>");
                    break;
                case 2:
                    out.println("<script>alert('Clear your Mind from Unnecessary Thoughts!');</script>");
                    break;
                default:
                    out.println("<script>alert('Things will be good from hereon. Have Faith!'); window.location.href = '/buttons';</script>");
                    session.setAttribute("buttonPresses", 0);
                    break;
            }
        }
    %>
<div class="login-box">
        <div>
            <a onclick="secret()">
                <p>
                    <span class="bg"></span>
                    <span class="base"></span>
                    <span class="text">Press Me!</span>
                </p>
            </a>
        </div>
        <form id="form" method="post">
        <input type="hidden" id="pressed" name="pressed" value="">
        </form>
    </div>
<script>
    function secret() {
            // Submit the form after a delay of 500ms
            setTimeout(function() {
                document.getElementById("pressed").value = "true";
                document.getElementById("form").submit();
            }, 500);
        }
    
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

