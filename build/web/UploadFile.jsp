

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<title>Designing Secure</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="head">
    <h1><a href="#">Designing</a></h1>
    <p>Secure and Efficient Biometric</p>
    <div id="topnav">
      <ul>
        <li><a href="AdminHome.jsp">Home</a></li>
         <li><a  class="active" href="UploadFile.jsp">Upload</a></li>
         <li><a href="ViewFile.jsp">Files</a></li>
          <li><a  href="Addsyntheticfingerprintimages.jsp">Add Synthetic Fingerprint</a></li>
            <li><a  href="ViewRepository.jsp">Repository</a></li>
         <li class="last"><a href="Admin.jsp">Logout</a></li>
      </ul>
    </div>
    <div id="search">
    
    </div>
  </div>
</div>
<div class="wrapper col2">
  <div id="gallery">
      <h2>Upload Files</h2>
     
    <div class="clear"></div>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <div id="content">
      
        
        <form action="UploadFile" method="post" enctype="multipart/form-data">
            <table>
                <tr><th>File Domain</th><td><input type="text" name="domain" required=""></td></tr>
                <tr><th>Choose File</th><td><input type="file" name="file" required=""></td></tr>
                <tr><th></th><td><input type="submit" value="Upload"></td></tr>
            </table>    
            
        </form>
        
      <div class="homecontent">
       
        <div class="clear"></div>
      </div>
     </div>
    <div id="column">
      <div id="featured">
        <ul>
          <li>
                 </li>
        </ul>
      </div>
     
    </div>
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
      <p class="fl_left">Designing Secure and Efficient Biometric-Based Secure Access Mechanism</p>
       <br class="clear" />
    </div>
    <div class="clear"></div>
  </div>
</div>
</body>
</html>