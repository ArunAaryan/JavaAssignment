
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;


public class login extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String email, password;
       email = request.getParameter("email");
       password = request.getParameter("password");
        System.out.println(email+ " "+ password);

        try{
        Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/assignment","root","12345678"); 
PreparedStatement pst = con.prepareStatement("select * from user where email = ?");

 pst.setString(1, email);
ResultSet rs = pst.executeQuery();
System.out.println("checking for data");
if(rs.next()){
    String name, phoneno, emailc, passwordc;
    name = rs.getString(1);
    phoneno = rs.getString(2);
    emailc = rs.getString(3);
    passwordc = rs.getString(4);
    System.out.println(rs.getString(4));
    System.out.println(password);
    if(password.equals(passwordc)){
        request.setAttribute("username", name);
        request.setAttribute("email",emailc);
        request.setAttribute("message","logged in ");
        RequestDispatcher rd = request.getRequestDispatcher("userloggedin.jsp");
        rd.forward(request, response);
        System.out.println("request forwarded to jsp");
    }//if
    else{
        System.out.println("password is wrong");
    }//else
}//outer if 
    else{
        System.out.println("no email found");
        request.setAttribute("message","user not registered or password is wrong");
        RequestDispatcher rd = request.getRequestDispatcher("userloggedin.jsp");
        rd.forward(request, response);
        
    }//outer else



 pst.close();
 con.close();
 
 
}catch (Exception e2) {e2.printStackTrace();}  

    }

    
}
