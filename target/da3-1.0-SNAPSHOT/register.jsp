<%-- 
    Document   : register.jsp
    Created on : Nov 15, 2020, 12:46:53 AM
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
          height: 700px;
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
        <h1 class="text-center text-white pt-5">Online tax calculation </h1>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="userregister.jsp" method="post">
                            <h3 class="text-center text-info">Register</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="uid" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="text" name="pass" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="email" class="text-info">Email:</label><br>
                                <input type="email" name="email" id="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="age" class="text-info">Age:</label><br>
                                <input type="number" name="age" id="age" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="state" class="text-info">State:</label><br>
                                <input type="text" name="state" id="state" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="city" class="text-info">City:</label><br>
                                <input type="text" name="city" id="city" class="form-control">
                            </div>
                            <div class="form-group">
                                <br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Register Here">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
