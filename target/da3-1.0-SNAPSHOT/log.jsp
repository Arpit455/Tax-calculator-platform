<%-- 
    Document   : log
    Created on : Nov 15, 2020, 12:50:38 AM
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
        String name = request.getParameter("uid");
        String pas = request.getParameter("pass");
             PreparedStatement statement = con.prepareStatement("select Username, Password from user where Username =? and Password=?");
            statement.setString(1, name);
            statement.setString(2, pas);
            ResultSet result = statement.executeQuery();
            if(result.next()){
                response.sendRedirect("home.jsp?uid=" + name);
            }else{
                response.sendRedirect("Login.jsp");
            }
			
    }
    catch (Exception e) { 
			e.printStackTrace(); 
                        response.sendRedirect("login.jsp");
		}



%>
