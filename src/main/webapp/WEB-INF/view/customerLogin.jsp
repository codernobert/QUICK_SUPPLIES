<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
     <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

    <section>
	    <div class="pull-right" style="padding-right:50px">
            <a href="<c:url value="/welcome" />">Home</a>
        </div>
       <div class="jumbotron">
           <div class="container">
               <h1>Welcome to Customer Login!</h1>
           </div>
       </div>
    </section>
    
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <strong>Login Here | <a href="<c:url value="/farmer/register" />">Click here to Register</a></strong>
                    <div class="panel-heading">
                        <h3 class="panel-title">Please sign in</h3>
                    </div>
                    <div class="panel-body">
                        <form action="customerLogin" method="post" class="form-horizontal"> 
       
                                   <p>${msg}</p>
                                   
                             <div class="input-group input-sm">
                                <label class="input-group-addon" for="email"><i class="fa fa-user"></i></label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
                             </div>
                             
                             <div class="input-group input-sm">
                                 <label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label>
                                 <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
                             </div>
                             
                            <div class="form-actions">
                                 <input type="submit" class="btn btn-block btn-primary btn-default" value="Log in">
                            </div>
                       </form>
                   </div>
              </div>
         </div>
      </div>
   </div>

</body>
</html>