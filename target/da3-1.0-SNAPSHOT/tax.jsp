<%-- 
    Document   : tax
    Created on : Nov 15, 2020, 12:46:47 PM
    Author     : arpit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tax portal</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <style>
          body {
          margin: 0;
          padding: 0;
          background-color: #F3CFBB;
          height: 100vh;
        }
        h1{
          color:white;
        }
        #colo{
            border: 1px solid #9C9C9C;
          background-color: #EAEAEA;
            
        }
        </style>
    </head>
    <body>
        
    <div class="container">
        <center><h1>Tax Details</h1></center><br><br>
        <div id="colo">
        <table class="table">
        <thead class="table-dark">
        <tr>
            
        <td>Username</td>
        <td>Income</td>
        <td>Loan</td>
        <td>Saving</td>
        <td>Deduction</td>
        <td>Total Tax</td>
        <td>Date</td>
        </tr>
        </thead>
        <%
        try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tax", 
                                                     "root",  
                                                     "");
           String name = request.getParameter("uid");                                                                                 
        Statement statement = null;
        ResultSet resultSet1 = null;
        ResultSet resultSet = null;

        statement=con.createStatement();

          String sqluser ="select * from taxinfo where username = " + "'" +name +"'";
          resultSet = statement.executeQuery(sqluser);
        while(resultSet.next()){
        %>
        <tr>
        <td><%=resultSet.getString("username") %></td>
        <td><%=resultSet.getString("income") %></td>
        <td><%=resultSet.getString("loan") %></td>
        <td><%=resultSet.getString("saving") %></td>
        <td><%=resultSet.getString("deduction") %></td>
         <td><%=resultSet.getString("tax") %></td>
          <td><%=resultSet.getString("date") %></td>
        </tr>
        <%
        }
        con.close();
        } catch (Exception e) {
        e.printStackTrace();
        }
        %>
        </table>
        </div>
        </div>
    </body>
</html>
