<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

	<center>
		<img alt="teacher pic" src="${teacher.teacherPic}" class="header-img">
		<h2 class="h2">${teacher.teacherName}</h2><hr>
	 	<p>
		<span class="p">E-mail Address:</span><span class="info"> ${teacher.emailAddress}<br></span>
		<span class="p">Certificate:</span><span class="info"> ${teacher.certificate}</span><br>
		<span class="p"> Courses:
		<c:forEach items="${teacher.getCourses()}" var="course">
			<span class="info"><a href="${appName}course/detail?id=${course.courseId}"> ${course.courseName} </a></span>
		</c:forEach>
	</center>
		
 

	
			<%if(session.getAttribute("user") != null){%>
			
			<%if(session.getAttribute("userRole").equals("ROLE_ADMIN")){ %>
			<div class ="botton">
				<a href="${appName}teacher/edit?id=${teacher.id}" class="btn btn-secondary"><i class="fa fa-cog" style="font-size:24px"></i>Edit</a> 
				<a href="${appName}teacher/delete?id=${teacher.id}" class="btn btn-danger"><i class="fa fa-trash-o" style="font-size:24px"></i>Delete</a><br>
				</div>
			<%}%>
			
 <% }%>

	
