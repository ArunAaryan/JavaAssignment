<%-- 
    Document   : header
    Created on : 08-Mar-2020, 10:40:23 AM
    Author     : arunaaryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 25%;
  background-color: #f1f1f1;
  height: 100%; /* Full height */
  position: fixed; /* Make it stick, even on scroll */
  overflow: auto; /* Enable scrolling if the sidenav has too much content */
}
            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file = "w3style.html" %>
        <title>JSP Header</title>
    </head>
    <body>
    
  
<div class="w3-bar w3-black">
    <div class="w3-panel w3-blue">
  <h2 class="w3-opacity"> CBIT LOGO</h2>
</div>
  <a href="#" class="w3-bar-item w3-button"></a>
  <a href="index.jsp" class="w3-bar-item w3-button">Home</a>
  <a href="register.jsp" class="w3-bar-item w3-button">Register</a>
  <a href="login.jsp" class="w3-bar-item w3-button">Login</a>
</div>
   </body>
</html>

