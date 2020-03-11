<%-- 
    Document   : userloggedin
    Created on : 10-Mar-2020, 8:50:50 pm
    Author     : rnyad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% if(request.getAttribute("username")!=null){ %>
        <h3> Hello, <%= request.getAttribute("username") %></h3>
        <h3><%= request.getAttribute("message") %></h3>
       
          <%  }else{ %>
       <%=  request.getAttribute("message") %>
       <% }%>

    </body>
</html>
