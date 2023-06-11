<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<style>
body {
    margin: 0;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 18%;
    background-color: #f1f1f1;
    position: fixed;
    height: 100%;
    overflow: auto;
}

li a {
    display: block;
    color: #000;
    padding: 8px 0 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
</style>

     <link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
  <meta charset="ISO-8859-1">
<title>Products</title>
</head>
<body>

    <section>
           <div class="pull-right" style="padding-right:50px">
               <a href="<c:url value="/logout" />">Logout</a>
           </div>          
     </section>

   <ul>
       <li><a class="active" href="<c:url value="/AdminDashboard" />">Dashboard</a></li>
       <li><a href="<c:url value="/products" />">View Suppliers</a></li>
       <li><a href="<c:url value="/add/PriceTrend" />">Add Price Trends</a></li>
       <li><a href="<c:url value="/editPriceTrends" />">Edit Price Trends</a>
       <li><a href="<c:url value="/makeOrders" />">Make Orders</a></li>
   </ul>

   <section style="margin-left:17%;height:220px;padding:1px 16px;">
     <div class="jumbotron">
        <div class="container">
            <h1>Products</h1>
            <p>All the available products</p>
        </div>
     </div>
   </section>
   
   <section class="container" style="margin-left:17%;height:220px;padding:1px 16px;">
      <div class="row">
           <c:forEach items="${products}" var="product">
               <div class="col-sm-6 col-md-3">
                   <div class="thumbnail">
                      <img src="<c:url value="/img/${product.productId}.jpg">
                      </c:url>" alt="image" style = "width:100%"/>
                          <div class="caption">
                              <h3>${product.product}</h3>
                              <p>${product.weight}</p>
                              <p>Ksh. ${product.unitPrice}</p>
                              <p>
                                 <a href=" <spring:url value="/product?id=${product.productId}" /> " class="btn btn-primary">
                                    <span class="glyphicon-info-sign glyphicon"/></span> Details
                                 </a>
                              </p>
                          </div>
                   </div>
               </div>
           </c:forEach>
      </div>
   </section>

</body>
</html>