<%-- 
    Document   : StudentRegister
    Created on : Feb 11, 2019, 1:45:03 AM
    Author     : Tridib
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Register</title>
        <link rel="Stylesheet" type="text/css" href="style1.css">
        <script type="text/javascript">
            function myfunction(){
                var pass1=document.getElementsByName("pass")[0].value;  
                var pass2=document.getElementsByName("conf_pass")[0].value;
                if(pass1===pass2){	
                        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                        if (reg.test(frm.text_email.value) == false) 
                        {
                            alert('Invalid Email Address');
                            frm.text_email.focus();	
                            return false;
                        }

                    return true;``
                }
                else{
                    alert('Password did not match');
                    return false;
                }
            }
        </script>
    </head>
    <body style="background: url(Icons/StudentRegistrationBG.jpg); background-size: cover;">
        <header>
            <div class="logo">
                <img src="Icons/logo.png">
            </div>
            <ul>
            <li><a href="Home.jsp">Home</a></li>
        </ul>
        </header>
         <div class="registrationbox">
            <h1>Student Registration</h1>
            <form name="frm" action="StudRegServ" method="post" onsubmit="return myfunction()">
                <hr><br>
                <p>Name</p>
                <input type="text" placeholder="Enter Student Name" required name="text_name" value="" />
                <br>
                <p>Email Address</p>
                <input type="text" placeholder="Enter E-mail Address" required name="text_email" value="" />
                <br>
                <p>Password</p>
                <input type="password" placeholder="Enter Password" minlength="6" required name="pass" value="" />
                <br>
                <p>Confirm Password</p>
                <input type="password" placeholder="Confirm Password" required name="conf_pass" value="" />
                <br>
                <input type="submit" value="Sign Up" />
                <h5 style="color:grey" align="center">Already registered? <a href="StudentLogin.jsp">Login</a></h5>
            </form>
        </div>
    </body>
</html>
