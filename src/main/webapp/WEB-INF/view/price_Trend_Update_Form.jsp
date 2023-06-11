<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"   uri="http://www.springframework.org/tags" %>   
    
<!DOCTYPE html>
<html>
<head>
            <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">

<meta charset="ISO-8859-1">
<title>Price Trend Update Form</title>
</head>

<spring:url value="/savePriceTrend" var="saveURL" />
 
<section class="container">

 <div class="row">
        <div class="thumbnail">
           <div class="caption">
    <form:form modelAttribute="priceTrendForm" method="post" action="${saveURL }" >
   <form:hidden path="priceTrend_id"/> 
  <table class="table table-hover">
     <tr>
          <th class="text-center">PRODUCT</th>
          <th class="text-center">LOCATION</th>
          <th class="text-center">QUANTITY</th>
          <th class="text-center">LOW</th>
          <th class="text-center">HIGH</th>
          <th class="text-center">DATE</th>
     </tr>
     <tr>
          <td class="text-center">
              <form:input path="product"/>
          </td>
          <td class="text-center">
              <form:input path="location"/>
          </td>
          <td class="text-center">
              <form:input path="quantity"/>
          </td>
          <td class="text-center">
              <form:input path="low"/>
          </td>
          <td class="text-center">
              <form:input path="high"/>
          </td>
          <td class="text-center">
              <form:input path="date"/>
          </td>
          <td class="text-center">
              <button type="submit">Save</button>
          </td>
      </tr>
  </table>
  
 </form:form>
 </div>
 </div>
 </div>
 </section>  

</body>
</html>