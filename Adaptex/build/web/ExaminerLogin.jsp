<%-- 
    Document   : ExaminerLogin
    Created on : 10 Feb, 2019, 5:11:35 PM
    Author     : Subarna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Examiner Login</title>
        <link  rel="stylesheet" type="text/css" href="style1.css">
    </head>
    <body style="background:  url(Icons/examinerlogin.jpeg); background-size: cover;">
        <header>
                <div class="logo">
                    <img src="Icons/logo.png">
                </div>
                <ul>
                    <li><a href="Home.jsp">Home</a></li>
                </ul>
        </header>
        <div class="loginbox">
            <h1>Examiner Login</h1>
            <form action="ExamLogServ" method="post">  
                <h6 style="color:grey" align="center">Are you a candidate? <a href="StudentLogin.jsp">Click Here</a> to Login</h6>
                <hr><br><br>
                <p>Examiner ID</p>
                <input type="text" placeholder="Enter Examiner ID" name="text_eid" value="" />
                <br>
                <p>Password</p>
                <input type="password" placeholder="Enter Password" name="text_pass" value="" />
                <br>
                <input type="submit" value="Login" />         
                <h5 style="color:grey" align="center">Not registered? <a href="#">Register Now</a></h5>
            </form>
        </div>
    </body>
</html>