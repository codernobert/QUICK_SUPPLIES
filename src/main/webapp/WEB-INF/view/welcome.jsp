<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<style>
body {
    margin: 0;
    background-image:url("../QUICK_SUPPLIES/img/BingWallpaper1.jpg");
    background-size: cover;
    }

</style>

          <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">

<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>

<ul>
  <li><a class="active" href="<c:url value="/welcome" />">Home</a></li>
  <li><a href="<c:url value="/customerLogin" />">Supplier Dashboard</a></li>
  <li><a href="<c:url value="/AdminDashboard" />">Admin Dashboard</a></li>
</ul>
   
</body>
</html>