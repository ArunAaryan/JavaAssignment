<%-- 
    Document   : login
    Created on : 08-Mar-2020, 11:27:26 AM
    Author     : arunaaryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div style="max-width:60rem; margin-left:15rem;margin-right:15rem;">
            <br/>
        <div class="w3-container w3-blue">
  <h2>Login</h2>
</div>
        
<form class="w3-container"  action = "/assignment/login" method ="POST">
  <p>
  
  <label>Email</label>
  <input class="w3-input" type="text" name ="email" ></p>
  <label>Password</label>
  <input class="w3-input" type="password" name ="password"></p>
  <input class="w3-block w3-black w3-btn" type ="submit" value ="Login">
</form>
        </div>
        <%@include file = "footer.jsp" %>
    </body>
</html>
