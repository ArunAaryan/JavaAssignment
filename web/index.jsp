<%-- 
    Document   : index
    Created on : 08-Mar-2020, 10:39:31 AM
    Author     : arunaaryan
--%>
<a href="header.jsp"></a>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file = 'w3style.html' %>
    </head>
    <body>
        <%@include file='header.jsp'%>

         <%! String user; %>
         
         <% if(request.getParameter("name")!=null){ %>
         <h2>Hello, <%= request.getParameter("name") %> </h2>
        
        <h2>You are successfully registered with email ( <%= request.getParameter("email")%>)</h2>
   <% }else { %>
        <h1>Welcome Home,</h1>
        <h1>This my Java Assignment!!</h1>
      <% } %>

        <h1>Welcome Home,</h1>
        <h1>This my Java Assignment!!</h1>

             <%@include file="footer.jsp" %>
       
        
    </body>
</html>
