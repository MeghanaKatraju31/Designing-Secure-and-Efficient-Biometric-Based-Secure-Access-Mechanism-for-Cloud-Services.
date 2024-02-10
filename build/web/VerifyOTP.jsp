<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.regex.Pattern"%>
<%@ page import="java.util.Random" %>
<%@ page import="javax.servlet.http.HttpSession"%>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        // Retrieve values from the form
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        // Check if the new password matches the confirmed password
        if (newPassword.equals(confirmPassword)) {
            // Redirect to ClientHome.jsp if passwords match
            response.sendRedirect("ClientHome.jsp");
        } else {
            // Display an error message if passwords do not match
            out.println("<p>Passwords do not match. Please go back and try again.</p>");
        }
    }
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
    <title>Reset Password</title>
</head>
<body id="top">

<div class="wrapper col1">
  <div id="head">
    <h1><a href="#">Designing</a></h1>
    <p>Secure and Efficient Biometric</p>
    <!-- Add your navigation links if needed -->
  </div>
</div>

<div class="wrapper col2">
  <div id="gallery">
    <h2>Reset Password</h2>
    <form action="VerifyOTP.jsp" method="post">
        <table>
            <tr><th>New Password</th><td><input type="password" name="newPassword" pattern="(?=.[A-Z])(?=.[a-z])(?=.\d)(?=.[@$!%?&])[A-Za-z\d@$!%?&]{8,}" 
                       title="Password must contain at least 8 characters with 1 uppercase letter, 1 lowercase letter, 1 digit, and 1 symbol" required></td></tr>
            <tr><th>Confirm Password</th><td><input type="password" name="confirmPassword"pattern="(?=.[A-Z])(?=.[a-z])(?=.\d)(?=.[@$!%?&])[A-Za-z\d@$!%?&]{8,}" 
                       title="Password must contain at least 8 characters with 1 uppercase letter, 1 lowercase letter, 1 digit, and 1 symbol" required></td></tr>
            <tr><th></th><td><input type="submit" value="Reset Password"></td></tr>
        </table>
    </form>
    <div class="clear"></div>
  </div>
</div>

<div class="wrapper col5">
  <div id="footer">
    <!-- Add your footer content if needed -->
  </div>
</div>

</body>
</html>
