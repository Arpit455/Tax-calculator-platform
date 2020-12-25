<%-- 
    Document   : userregister.jsp
    Created on : Nov 15, 2020, 12:49:11 AM
    Author     : arpit
--%>

<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
                try{

         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tax", 
                                                     "root",  
                                                     "");
        String name=request.getParameter("uid");
        String pwd=request.getParameter("pass");
        String email=request.getParameter("email");
        int age=Integer.parseInt(request.getParameter("age"));
        String state=request.getParameter("state");
        String city=request.getParameter("city");
        
        String sql = "Insert Into user (Username,Password,age,email,state,city) Values(?,?,?,?,?,?)";
        PreparedStatement stm =con.prepareStatement(sql);
        stm.setString(1,name);
        stm.setString(2,pwd);
        stm.setInt(3,age);
        stm.setString(4,email);
        stm.setString(5,state);
        stm.setString(6,city);
        stm.executeUpdate();
        stm.close(); 
        con.close(); 
        response.sendRedirect("Login.jsp");
        }catch(Exception e){
            
            e.printStackTrace();
            response.sendRedirect("register.jsp");
                    
        }


%>
