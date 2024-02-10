
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Properties"%>
<%@ page import= "javax.mail.Session"%>
<%@ page import= "javax.mail.Message"%>
<%@ page import= "javax.mail.Transport"%>
<%@ page import= "javax.mail.internet.InternetAddress"%>
<%@ page import= "javax.mail.internet.MimeMessage"%>
<%@ page import="java.util.Random" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<style>
        th {
            color: gray /* Specify the text color you want for the "Your Email" label */;
        }
    </style>
    <title>Forgot Password</title>
</head>
<body id="top">

<%
    // Get user email from the request (you should validate and sanitize user inputs)
    String userEmail = request.getParameter("email");

    // Generate a random password reset token (you may want to use a stronger mechanism)
    String resetToken = "randomToken123";

    // Your Gmail credentials
    String username = "authenticationbiometric@gmail.com";
    String password = "Biometric@123";
     Random random = new Random();
        int otp = 100000 + random.nextInt(900000);
        
    session.setAttribute("generatedOTP", String.valueOf(otp));
    session.setAttribute("userEmail", String.valueOf(userEmail));

    // Set up the mail server properties
    Properties props = new Properties();
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");
props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
    // Create a session with the Gmail SMTP server
    Session emailsession = Session.getInstance(props, new javax.mail.Authenticator() {
        protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
            return new javax.mail.PasswordAuthentication("authenticationbiometric@gmail.com", "iboggbzudbjvtyak");
        }
    });

    try {
        // Create a default MimeMessage object
        Message message = new MimeMessage(emailsession);

        // Set the sender address
        message.setFrom(new InternetAddress(username));

        // Set the recipient address
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(userEmail));

        // Set the email subject and content
        message.setSubject("Password Reset");
        message.setText(" <a href='http://localhost:8084/Designing_Secure_and_Efficient_Biometric-BasedSecure_Access_Mechanism/VerifyOTP.jsp. Give the following OTP on your screen to reset " + otp);

        // Send the message
        Transport.send(message);
         %>
        <script>
            // Use JavaScript to store values in local storage
            localStorage.setItem('userEmail', '<%= userEmail %>');
            localStorage.setItem('generatedOTP', '<%= otp %>');
        </script>
        <%

        // Add a success message (you might want to redirect to a confirmation page)
        out.println("<p>Email sent successfully. Check your inbox for further instructions.</p>");
    } catch (Exception e) {
        // Handle exceptions (you might want to redirect to an error page)
        out.println("<p>Error sending email: " + e.getMessage() + "</p>");
    }
%> 


<div class="wrapper col1">
  <div id="head">
    <h1><a href="#">Designing</a></h1>
    <p>Secure and Efficient Biometric</p>
    <div id="topnav">
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a  class="active" href="Client.jsp">Client</a></li>
        <li><a href="AuthenticationServer.jsp">Authentication Server</a></li>
  
        
        <li><a href="ResourceServer.jsp">Resource Server</a></li>
         <li  class="last"><a href="Admin.jsp">Admin</a></li>
      </ul>
    </div>
    <div id="search">
    
    </div>
  </div>
</div>
<div class="wrapper col2">
  <div id="gallery">
      <h2>Forgot Password</h2>
      <form action="ForgotPassword.jsp" method="post">
          <table>
              <tr><th>Your Email</th><td><input type="text" name="email" required=""></tD></tr>
              <tr><th></th><td><input type="submit" value="Submit">
                  </tD></tr>
          </table>
      </form>
    <div class="clear"></div>
  </div>
</div>

<div class="wrapper col5">
  <div id="footer">
   
    <!-- End Contact Form -->
    <div id="compdetails">
     
     
      <div class="clear"></div>
    </div>
    <!-- End Company Details -->
    <div id="copyright">
      <p class="fl_left">Designing Secure and Efficient Biometric-BasedSecure Access Mechanism</p>
       <br class="clear" />
    </div>
    <div class="clear"></div>
  </div>
</div>
</body>
</html>