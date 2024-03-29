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
<title>View Price Trends</title>
</head>
<body>

      <ul>
         <li><a class="active" href="<c:url value="/SupplierDashboard" />">Dashboard</a></li>
         <li><a href="<c:url value="/products/add" />">Add Farm Produce</a></li>
         <li><a href="<c:url value="/editProducts" />">Manage Products</a></li>
         <li><a href="<c:url value="/viewPriceTrends" />">Price Trends</a></li>
      </ul>
      
      <div class="pull-right" style="padding-right:50px">
               <a href="<c:url value="/customerLogin" />">Logout</a>
      </div>
      
      <br><br>

<section class="container" style="margin-left:18.5%;margin-right:6%;height:220px;padding:1px 16px;">
      <div class="row">
        <div class="thumbnail">
           <div class="caption">
          
           
           
                         <table class="table table-hover">
                            <tr>
                                <th colspan="10" class="text-center">
                                    PRICE TRENDS
                                </th>  
                            </tr> 
                            <tr>
                                
                                <th class="text-center">PRICE TREND ID</th>
                                <th class="text-center">PRODUCT</th>
                                <th class="text-center">LOCATION</th>
                                <th class="text-center">QUANTITY</th>
                                <th class="text-center">LOW (KSH)</th>
                                <th class="text-center">HIGH (KSH)</th>
                                <th class="text-center">DATE</th>
                                
                            </tr>
                <c:forEach items="${viewPriceTrends}" var="admin">         
                            <tr>
                                <td class="text-center">${admin.priceTrend_id}</td>
                                <td class="text-center">${admin.product}</td>
                                <td class="text-center">${admin.location}</td>
                                <td class="text-center">${admin.quantity}</td>
                                <td class="text-center">${admin.low}</td>
                                <td class="text-center">${admin.high}</td>
                                <td class="text-center">${admin.date}</td>
                                
                              
                            </tr>
                </c:forEach>             
                        </table>
                        
        </div>
        </div>                 
    </div>                      
</section>

</body>
</html>