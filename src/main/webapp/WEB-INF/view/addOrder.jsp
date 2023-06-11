<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
     <meta charset="ISO-8859-1">
     <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">   

<title>Add Order</title>
</head>
<body>

     <section>
           <div class="jumbotron">
                <div class="container">
                     <h1>Add Order</h1>
                </div>
           </div>
     </section>
      
    <section class="container">
 
      <div class="row">
           <div class="col-md-5">
               <h3>${product.product}</h3>
               <p>${product.description}</p>
               
               <p>
                  <strong>Owner</strong> : 
                      ${product.owner}
               </p>
 
               <p>
                  <strong>Location</strong> :
                     ${product.location}
               </p>
 
               <h4>Ksh. ${product.unitPrice}</h4>
  
           </div>
         
     </div>
     
   </section>
     
</body>
</html>