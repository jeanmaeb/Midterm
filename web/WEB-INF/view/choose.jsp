<%-- 
    Document   : index
    Created on : Mar 21, 2024, 9:07:33 PM
    Author     : Joshua D. Talaid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JAVAxHTML</title>
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
        width: 1000px;
        height: auto;
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
        width: 400px;
        height: auto;
        padding: 8px;
        font-size: 2rem;
        font-weight: 900;
        color: #ff4655;
        text-align: center;
        margin: 50% auto;
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
        height: 400px;
        width: 400px;
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
        left: -25%;
        position: absolute;
        background: #ff4655;
        width: 0;
        height: 100%;
        z-index: 3;
        transition: 0.3s ease-out all;
        transform: skewX(-25deg);
    }

    .login-box div a > p span.text {
        z-index: 4;
        width: 100%;
        height: 100%;
        position: absolute;
        left: 0;
        top: 45%;
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
        width: 150%;
    }

    .login-box div a:hover span.text:after {
        background: #ece8e1;
    }
</style>

</head>
<body>
    <div class="login-box">
        <h1>CHOOSE ACCOUNT</h1>
        <div style="overflow: hidden;">
            <a href="/main" style="float: left;">
                <p>
                    <span class="bg"></span>
                    <span class="base"></span>
                    <span class="text">Joshua</span>
                    <img src="https://scontent.xx.fbcdn.net/v/t1.15752-9/433010031_393384853483662_7790287045565521409_n.jpg?stp=dst-jpg_p403x403&_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE0y_dDn2-Mixc2CkSMzMTZZy4oGtcJul1nLiga1wm6XROglxT0yBM3Ct6XtN4ReTm1rAYjwdn_yhsNFfqz4LPl&_nc_ohc=YrjiOwsZ2VUAb4fH1KZ&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdVBtZI2B6kMbxiVr58EVgVtj0y91Ucc8VMmwoGz4x9O_g&oe=6635F4AC">
                </p>
            </a>
            <a href="/mainBeronio" style="float: right;">
                <p>
                    <span class="bg"></span>
                    <span class="base"></span>
                    <span class="text">Jean</span>
                    <img src="https://scontent.xx.fbcdn.net/v/t1.15752-9/434617725_466987199009917_6319885059477479087_n.jpg?stp=dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeESn-YTW7_7BBYy3SVMXCViUyZUYFrhJu9TJlRgWuEm7xczaXIh_BP-ra961rm4oav-yulN7-cc2qe_0E3WSzGh&_nc_ohc=4NTAPcB4LEsAb45JHoa&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdUxHpAiDzvIIrnrVY25XpCrs7Jh60i1tLWHwCJJpWD20Q&oe=6636076B" height = "400px" width = "400px">
                </p>
            </a>
        </div>
    </div>
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
    // Get the computed style of the body element
var bodyStyle = window.getComputedStyle(document.body);

// Retrieve the background image URL from the computed style
var backgroundImage = bodyStyle.getPropertyValue('bg.gif');

// Remove 'url()' and surrounding quotes from the URL
var imageURL = backgroundImage.replace(/url\(['"]?(.*?)['"]?\)/i, '$1');

// Log or use the URL as needed
console.log("Background image URL:", imageURL);

</script>

</body>
</html>
