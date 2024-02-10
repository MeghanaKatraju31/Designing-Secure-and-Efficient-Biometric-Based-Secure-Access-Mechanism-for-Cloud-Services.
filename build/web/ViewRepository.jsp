

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
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
          <li><a href="UploadFile.jsp">Upload</a></li>
         <li><a href="ViewFile.jsp">Files</a></li>
          <li><a href="Addsyntheticfingerprintimages.jsp">Add Synthetic Fingerprint</a></li>
            <li><a   class="active"  href="ViewRepository.jsp">Repository</a></li>
         <li class="last"><a href="Admin.jsp">Logout</a></li>
      </ul>
    </div>
    <div id="search">
    
    </div>
  </div>
</div>
<div class="wrapper col2">
  <div id="gallery">
      <h2>Welcome to <strong>Admin</strong> home page</h2>
     
    <div class="clear"></div>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <div id="content">
      
        
        
        <h3>View Repository Images</h3>
        
        <table>
            <tr>
                <th>ID</th> <th>Image</th>
            </tr>
            
            <%
            try{
                String query="select * from repository";
                ResultSet r=Queries.getExecuteQuery(query);
                while(r.next()){
                    %>
                    <tr>
                        <td><%=r.getString("id")%></td>
                        <td><image src="view.jsp?id=<%=r.getString("id")%>" width="100" height="100"/></td>
                    </tR>
                    <%
                }
            }catch(Exception e){
              out.println(e);  
            }
            
            
            %>
            
            
        </table>
        
        
        
        
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