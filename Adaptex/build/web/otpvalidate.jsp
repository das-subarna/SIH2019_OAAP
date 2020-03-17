<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <a href="META-INF/context.xml"></a>
        <link rel="Stylesheet" type="text/css" href="style1.css">
        <script type="text/javascript">
            function myfunction(){
                var otp=document.getElementsByName("text_otp")[0].value; 
                var sotp = <%=  session.getAttribute("s_otp").toString() %> ;              
                if(otp==sotp){
                    alert('Account Verified Successfully! Login to continue.');
                    return true;
                }
                else{
                    alert('OTP entered was incorrect.Try Again!');
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
         <div class="otpvalidate">
            <h1>Verify OTP</h1>
            <form action="otpserv" method="post" onsubmit="return myfunction()">
                <h6 style="color:grey" align="center">Enter the 6 digit OTP sent to your email address</h6>
                <hr><br>
                <p>OTP</p>
                <input type="text" placeholder="Enter OTP" name="text_otp" value="" />
                <br>
                <input type="submit" value="Verify" />
                <h5 style="color:grey" align="center">Didn't receive OTP ? <a href="Email.jsp">Resend</a></h5>
            </form>
        </div>
    </body>
</html>