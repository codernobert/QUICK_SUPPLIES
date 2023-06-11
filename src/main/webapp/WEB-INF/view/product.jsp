<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
     <meta charset="ISO-8859-1">
     <script src="webjars/angularjs/1.7.0/angular.min.js"></script>    
     <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
       <link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">   
     <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.1/angular.min.js"></script>

<title>Products</title>
</head>
<body>

 <section></section>     
<section class="container" >
        <form:form method="POST" modelAttribute="newOrder" class="form-horizontal" enctype="multipart/form-data">
           <fieldset>
              <legend>Add new order</legend>
        
                  <div class="form-group">
                      <label class="control-label col-lg-2 col-lg-2" for="owner">Owner</label>
                          <div class="col-lg-10">
                            <form:input id="owner" path="owner" type="text" value="${product.owner}" class="form:input-large"/>
                            
                          </div>
                  </div>
                  
                  <div class="form-group">
                      <label class="control-label col-lg-2 col-lg-2" for="product">Product</label>
                          <div class="col-lg-10">
                            <form:input id="product" path="product" type="text" value="${product.product}" class="form:input-large"/>
                          </div>
                  </div>
                  
                  <div class="form-group">
                      <label class="control-label col-lg-2 col-lg-2" for="weight">Weight</label>
                          <div class="col-lg-10">
                            <form:input id="weight" path="weight" type="text" value="${product.weight}" class="form:input-large"/>
                          </div>
                  </div>
                  
                  <div class="form-group">
                      <label class="control-label col-lg-2 col-lg-2" for="quantity">Quantity</label>
                          <div class="col-lg-10">
                            <form:input id="quantity" path="quantity" type="text" value="${product.quantity}" class="form:input-large"/>
                          </div>
                  </div>
                  
                  <div class="form-group">
                      <label class="control-label col-lg-2 col-lg-2" for="unitPrice">Unit Price</label>
                          <div class="col-lg-10">
                            <form:input id="unitPrice" path="unitPrice" type="text" value="${product.unitPrice}" class="form:input-large"/>
                          </div>
                  </div>
                  
                  <div class="form-group">
                       <label class="control-label col-lg-2" for="description">Description</label>
                            <div class="col-lg-10">
                                 <form:input id="description" path="description"  value="${product.description}" class="form:input-large" />
                            </div>
                  </div>
                  
                  <div class="form-group">
                       <div class="col-lg-offset-2 col-lg-10">
                           <input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
                       </div>
                  </div>
               </fieldset>
           </form:form>
     </section>

</body>
</html>


