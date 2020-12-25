<%-- 
    Document   : taxcalculate
    Created on : Nov 15, 2020, 12:17:50 PM
    Author     : arpit
--%>

<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
         
         String uname = request.getParameter("uid");
         try{
          
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tax", 
                                                     "root",  
                                                     "");
        double total=Double.parseDouble(request.getParameter("income"));
        double saving=Double.parseDouble(request.getParameter("saving"));
        double loan=Double.parseDouble(request.getParameter("loan"));
        String date=request.getParameter("date");
        double deduction,netincome=total;
        if(loan+saving>=150000)
        {
        deduction=150000;
    }
    else
    {
    deduction=loan+saving;
    }
        double tax;
        if(deduction>=150000)
        {
            total=total-150000;
        }
        else
        {
            total=total-deduction;
        }
        if(total>1000000)
        {
            tax=112500+0.3*(total-1000000);
        }
        else if(total>500000 && total<=1000000)
        {
            tax=12500+0.2*(total-500000);
        }
        else if(total>250000 && total<=500000)
        {
            tax=0.05*total;
        }
        else
        {
            tax=0;
        }
        
        String sql = "Insert Into taxinfo (username,income,loan,saving,deduction,tax,date) Values(?,?,?,?,?,?,?)";
        PreparedStatement stm =con.prepareStatement(sql);
        stm.setString(1,uname);
        stm.setDouble(2,netincome);
        stm.setDouble(3,loan);
        stm.setDouble(4,saving);
        stm.setDouble(5,deduction);
        stm.setDouble(6,tax);
        stm.setString(7,date);
        stm.executeUpdate();
        stm.close(); 
        con.close(); 
        response.sendRedirect("home.jsp?uid=" + uname);
        }catch(Exception e){ 
            e.printStackTrace();
            response.sendRedirect("home.jsp?uid=" + uname);
                    
        }


%>

