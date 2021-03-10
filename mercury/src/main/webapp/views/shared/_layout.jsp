<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide|Sofia|Trirong">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=neon|outline|emboss|shadow-multiple">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yusei+Magic&display=swap" rel="stylesheet">

<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="css/style.css">
<link rel="icon" href="imges/mercury_whiteLogo.png">
<link rel="icon" href="../imges/mercury_whiteLogo.png">
<title>Mercury Platform</title>
</head>
<body>

<div>

<a href="${appName}">
<div class="icon"></div>
<h1 class="font-effect-emboss" id="h1"> ${Welcome}</h1>
</a>

</div>
<nav>
<div class="navbar-header">
<a href="${appName}" class="nav-link"><i class="fa fa-fw fa-home"style="font-size:24px"></i>Home</a>
<a href="${appName}course/index" class="nav-link"><i class="fa fa-toggle-right" style="font-size:24px"></i>Courses</a>
<a href="${appName}teacher/index"class="nav-link"><i class="fa fa-user-circle-o" style="font-size:24px"></i>Teachers</a>
<% if(session.getAttribute("user") != null){%>
<% if(session.getAttribute("userRole").equals("ROLE_ADMIN")){%>
	<a href="${appName}course/add"class="nav-link"><i class="fa fa-plus-square" style="font-size:24px"></i>New Course</a>
	<a href="${appName}teacher/add"class="nav-link"><i class="fa fa-user-plus" style="font-size:24px"></i>New Teacher</a>
	<%} %> 
	<div style="position: absolute; right: 0; top :85px;">
	<a href="${appName}user/profile?id=${user.id}" class="nav-link"><i class="fa fa-address-card-o"style="font-size:24px"></i>Profile</a>
	<a href="${appName}user/logout" class="nav-link"><i class="fa fa-sign-out" style="font-size:24px"></i></i>Logout</a>
	</div>
<%}else{ %>
<div style="position: absolute; right: 0; top :85px;">
	<a href="${appName}user/login" class="nav-link"><i class="fa fa-external-link-square" style="font-size:24px"></i>Login</a>
	<a href="${appName}user/register"class="nav-link" ><i class="fa fa-edit" style="font-size:24px"></i>Sign-up</a>
</div>
	
<%} %>
</div>
</nav>
</body>
</html>