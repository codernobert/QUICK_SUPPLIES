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
<title>product_update Form</title>
</head>

<spring:url value="/save" var="saveURL" />
 
<section class="container">

 <div class="row">
        <div class="thumbnail">
           <div class="caption">
    <form:form modelAttribute="productForm" method="post" action="${saveURL }" >
   <form:hidden path="proId"/> 
  <table class="table table-hover">
     <tr>
          <th class="text-center">PRODUCT ID</th>
          <th class="text-center">OWNER'S NAME</th>
          <th class="text-center">CONTACT</th>
          <th class="text-center">PRODUCT</th>
          <th class="text-center">LOCATION</th>
          <th class="text-center">WEIGHT</th>
          <th class="text-center">QUANTITY</th>
          <th class="text-center">UNIT PRICE</th>
          <th class="text-center">DESCRIPTION</th>
     </tr>
     <tr>
          <td class="text-center">
              <form:input path="productId"/>
          </td>
          <td class="text-center">
              <form:input path="owner"/>
          </td>
          <td class="text-center">
              <form:input path="contact"/>
          </td>
          <td class="text-center">
              <form:input path="product"/>
          </td>
          <td class="text-center">
              <form:input path="location"/>
          </td>
          <td class="text-center">
              <form:input path="weight"/>
          </td>
          <td class="text-center">
              <form:input path="quantity"/>
          </td>
          <td class="text-center">
              <form:input path="unitPrice"/>
          </td>
          <td class="text-center">
              <form:input path="description"/>
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