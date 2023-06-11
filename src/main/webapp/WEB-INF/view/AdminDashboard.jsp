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

          <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">

<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
</head>
<body>
   <ul>
       <li><a class="active" href="<c:url value="/AdminDashboard" />">Dashboard</a></li>
       <li><a href="<c:url value="/products" />">View Suppliers</a></li>
       <li><a href="<c:url value="/add/PriceTrend" />">Add Price Trends</a></li>
       <li><a href="<c:url value="/editPriceTrends" />">Edit Price Trends</a></li>
       <li><a href="<c:url value="/makeOrders" />">Make Orders</a></li>
   </ul>
   
     <section style="margin-left:17%;height:220px;padding:1px 16px;">
           <div class="pull-right" style="padding-right:50px">
               <a href="<c:url value="/logout" />">Logout</a>
           </div>
           <div class="jumbotron">
              <div class="container">
                <h1>Welcome</h1>
              </div>
         </div>
          
     </section>

   
   
   
</body>
</html>