<%-- 
    Document   : StudentLogin
    Created on : 10 Feb, 2019, 3:39:07 PM
    Author     : Subarna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login</title>
        <link  rel="stylesheet" type="text/css" href="style1.css">
    </head>
    <body style="background:  url(Icons/loginbg.jpg); background-size: cover;">
        <header>
        <div class="logo">
            <img src="Icons/logo.png">
        </div>
        <ul>
            <li><a href="Home.jsp">Home</a></li>
        </ul>
        </header>
        <div class="loginbox">
            <h1>Student Login</h1>
            <form action="StudLogServ" method="post">
                <h6 style="color:grey" align="center">Enter User ID and Password sent to
                    your registered e-mail to continue</h6>
                <hr>
                <p>User ID</p>
                <input type="text" placeholder="Enter User ID" required name="text_uid" value="" />
                <br>
                <p>Password</p>
                <input type="password" placeholder="Enter Password" required name="text_pass" value="" />
                <br>
                <input type="submit" value="Login" />
                <h5 style="color:grey" align="center">Not registered? <a href="StudentRegister.jsp">Register Now</a></h5>
                <h5 style="color:grey" align="center">Forgot User ID ? <a href="UidRetrieve.jsp">Get Now</a></h5>
            </form>
        </div>
    </body>
</html>
