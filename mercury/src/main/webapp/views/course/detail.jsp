<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<div>	
	<%if(session.getAttribute("user") != null){%>
		<%boolean isEnroll = false; %>
			<c:forEach items="${user.getCourses()}" var="userCourse">
				<c:if test="${userCourse.courseId == course.courseId}">
				        <iframe width="1000" height="500" height="315" style="display: block;margin: 0 auto;"
			            src="${course.courseUrl}" 
			            frameborder="0"
			            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
			            allowfullscreen>
		    			</iframe><br>
		    			<center>
		    			<h2 class="h2">${course.courseName}</h2><hr>
		    				<p>
						<span class="p">Description:</span><span class="info"> ${course.courseDescreption}<br></span>
						<span class="p">Teaching by:</span><span class="info"><a href="${appName}teacher/details?id=${course.getTeacher().getId()}"> ${course.teacher.teacherName}</a></span><br>
						<span class="p">Start Date:</span> <span class="info">${course.startDate}</span><br>
						<span class="p">End Date:</span>  <span class="info"> ${course.endtDate}</span><br></p>
							</center>
		    			<%isEnroll = true; %> 
				      	<br>
				</c:if>
			</c:forEach>
			<%if(!isEnroll){ %>
			
						<img alt="course pic" src="${course.coursePicture}" class="header-img">
						<center>
		    			<h2 class="h2">${course.courseName}</h2><hr>
		    				<p>
						<span class="p">Description:</span><span class="info"> ${course.courseDescreption}<br></span>
						<span class="p">Teaching by:</span><span class="info"><a href="${appName}teacher/details?id=${course.getTeacher().getId()}"> ${course.teacher.teacherName}</a></span><br>
						<span class="p">Start Date:</span> <span class="info">${course.startDate}</span><br>
						<span class="p">End Date:</span>  <span class="info"> ${course.endtDate}</span><br></p>
						</center>
						
							
					<%if(session.getAttribute("userRole").equals("ROLE_STUDENT") ){ %>
						<form action="${appName}course/enroll?id=${course.courseId}" method="post">
							<input type="hidden" value="${course.courseId}" name="courseId">
							<div class ="botton">
							<button type="submit" class="btn btn-info">
							Enroll</button>
							</div>
							</p>
							</div>
						</form>					
					<%} %>
			  </div>
			<%} %>

				      	<%if(session.getAttribute("userRole").equals("ROLE_ADMIN")){ %>
				      		<div class ="bottonAdmin">
				<a href="${appName}course/edit?id=${course.courseId}" class="btn btn-secondary"><i class="fa fa-plus-square" style="font-size:24px"></i>Edit</a> 
				<a href="${appName}course/delete?id=${course.courseId}" class="btn btn-danger"><i class="fa fa-trash-o" style="font-size:24px"></i>Delete</a><br>
				</div>
				      	<iframe width="1000" height="500" height="315" style="display: block;margin: 0 auto;"
			            src="${course.courseUrl}" 
			            frameborder="0"
			            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
			            allowfullscreen>
		    			</iframe><br>
		
			<%}%>
			
		<%} else { %>
		
			 	<img alt="course pic" src="${course.coursePicture}" class="header-img">
			 	<div class ="Center">
			 	<br>
		             	<h2 class="h2">${course.courseName}</h2>
		             	<p>
						<span class="p">Description:</span><span class="info"> ${course.courseDescreption}<br></span>
						<span class="p">Teaching by:</span><span class="info"><a href="${appName}teacher/details?id=${course.getTeacher().getId()}"> ${course.teacher.teacherName}</a></span><br>
						<span class="p">Start Date:</span> <span class="info">${course.startDate}</span><br>
						<span class="p">End Date:</span>  <span class="info"> ${course.endtDate}</span>
						</p>
						</div>
		<% }%>
