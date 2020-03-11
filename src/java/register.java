import java.io.*;  
import java.sql.*;  

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;


import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class register extends HttpServlet {  
  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  

String name, phoneno, email, password;
name = request.getParameter("name");
phoneno = request.getParameter("phoneno");
email = request.getParameter("email");
password = request.getParameter("password");

          
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/assignment","root","12345678");  
              

 
 PreparedStatement pst = con.prepareStatement("insert into user values(?, ?, ?, ?)");
 pst.setString(1,name);
 pst.setString(2, phoneno);
 pst.setString(3, email);
 pst.setString(4, password);
 int update = pst.executeUpdate();
 pst.close();
 con.close();
 
 request.setAttribute("username", name);
 request.setAttribute("email",email);
 RequestDispatcher rd = request.getRequestDispatcher("/"); 
 rd.forward(request, response);

 Statement st = con.createStatement();
 ResultSet rs = st.executeQuery("select * from user");
 
  
while(rs.next())  
{  
System.out.println("There");}
              

}catch (Exception e2) {e2.printStackTrace();}  
          
finally{}  
  
}  
}  