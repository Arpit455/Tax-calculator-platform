<%-- 
    Document   : home
    Created on : Nov 15, 2020, 12:52:05 AM
    Author     : arpit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tax portal</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    </head>
    <style>
        body {
          margin: 0;
          padding: 0;
          background-color: #F3CFBB;
          height: 200vh;
        }
        #login .container #login-row #login-column #login-box {
          margin-top: 120px;
          max-width: 600px;
          height: 500px;
          border: 1px solid #9C9C9C;
          background-color: #EAEAEA;
        }
        #login .container #login-row #login-column #login-box #login-form {
          padding: 20px;
        }
        #login .container #login-row #login-column #login-box #login-form #register-link {
          margin-top: -85px;
        }

</style>
<div id="login">
        <h1 class="text-center text-white pt-5">Online tax calcuation </h1>
        <%
        String name = request.getParameter("uid");

        %>
        <br>
        <h3 class="text-center">Welcome <%= name%></h3>
        <div class="container">
            <br>
            
            
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        
                        
                        <form id="login-form" class="form" action="taxcalculate.jsp?uid=<%= name%>" method="post">
                            <h3 class="text-center text-info">Enter your details</h3>
                            <div class="form-group">
                                <label for="income" class="text-info">Total income:</label><br>
                                <input type="number" name="income"  class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="saving" class="text-info">Total saving:</label><br>
                                <input type="number" name="saving"  class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="loan" class="text-info">Total loan:</label><br>
                                <input type="number" name="loan"  class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="date" class="text-info">Date:</label><br>
                                <input type="Date" name="date"  class="form-control">
                            </div>
                            <div class="form-group">
                                <br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Submit details">
                            </div>
                        </form>
                            
                    </div>
                </div>
            </div>
                            <br><br><br>
                            <h3 class="text-center text-info"><a href="tax.jsp?uid=<%= name%>">Click here to view Tax Details</a></h3>
                            <br><br>
                            <h3 class="text-center text-info"><a href="user.jsp?uid=<%= name%>">Click here to view User Details</a></h3>
                            <br><br>
                            <center><a href="logout.jsp" class="btn btn-primary text-center">lOGOUT</a></center> 
                            
        </div>
    </div>
</body>

</html>
