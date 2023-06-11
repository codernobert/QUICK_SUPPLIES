<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"   uri="http://www.springframework.org/tags" %>   
    
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
<title>Make Orders</title>
</head>
<body>

      <ul>
          <li><a class="active" href="<c:url value="/AdminDashboard" />">Dashboard</a></li>
          <li><a href="<c:url value="/products" />">View Suppliers</a></li>
          <li><a href="<c:url value="/add/PriceTrend" />">Add Price Trends</a></li>
          <li><a href="<c:url value="/editPriceTrends" />">Edit Price Trends</a></li>
          <li><a href="<c:url value="/makeOrders" />">Make Orders</a></li>
      </ul>
      
           <div class="pull-right" style="padding-right:50px">
               <a href="<c:url value="/logout" />">Logout</a>
           </div>
      
      <br><br>

<section class="container" style="margin-left:18.5%;margin-right:6%;height:220px;padding:1px 16px;">
      <div class="row">
        <div class="thumbnail">
           <div class="caption">
          
           
           
                   <table class="table table-hover">
                            <tr>
                                <th colspan="10" class="text-center">
                                    Make Order
                                </th>  
                            </tr> 
                            <tr>
                                <th class="text-center">OWNER'S NAME</th>
                                <th class="text-center">PRODUCT</th>
                                <th class="text-center">WEIGHT</th>
                                <th class="text-center">QUANTITY</th>
                                <th class="text-center">UNIT PRICE</th>
                                <th class="text-center">DESCRIPTION</th>
                                <th class="text-center" colspan="2">ACTION</th>
                                
                            </tr>
                <c:forEach items="${makeOrders}" var="product">          
                            <tr>
                                <td class="text-center">${product.owner}</td>
                                <td class="text-center">${product.product}</td>
                                <td class="text-center">${product.weight}</td>
                                <td class="text-center">${product.quantity}</td>
                                <td class="text-center">${product.unitPrice}</td>
                                <td class="text-center">${product.description}</td>
                                
                                <td>
                                  <a href=" <spring:url value="/product?id=${product.productId}" /> " class="btn btn-primary">
                                    <span class="glyphicon-info-sign glyphicon"/></span> Make Order
                                 </a>
                                </td>
                                
                                
                            </tr>
                </c:forEach>             
                        </table>
                        
              </div>
           </div>
         </div>
       </section>               
</body>
</html>