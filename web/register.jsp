<%-- 
    Document   : register
    Created on : 08-Mar-2020, 11:15:14 AM
    Author     : arunaaryan
--%>
<%@ page import="java.sql.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
  
        <br/>
        <div style="max-width:60rem; margin-left:15rem;margin-right:15rem;">
        <div class="w3-container w3-blue">
  <h2>Register</h2>
</div>
        
<form class="w3-container"  action = "/assignment/register" method ="POST">
  <p>
  <label>Name</label>
  <input class="w3-input" type="text"name ="name"></p>
  <p>
  <label>Phone no</label>
  <input class="w3-input" type="text" name ="phoneno"></p>
  <p>
  <label>Email</label>
  <input class="w3-input" type="text" name ="email" ></p>
  <label>Password</label>
  <input class="w3-input" type="password" name ="password"></p>
  <input class="w3-block w3-black w3-btn" type ="submit" value ="register">
</form>
        </div>
    
        <%@include file = "footer.jsp"%>
    </body>
</html>
   </TABLE>
