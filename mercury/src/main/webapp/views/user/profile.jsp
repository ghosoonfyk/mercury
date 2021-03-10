<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="../shared/_layout.jsp"/>

<div class="container">
	<div class="row d-flex justify-content-center">
		<div class="col-lg-6 col-md-9">
			<div class="main my-5">
				<div class="header p-3">
					<div class="container">
						<div class="row">
							<div class="col-12 mb-3">
							   <div class="col-12 mb-3">
         <img src="${user.image}" alt="profile image" class="img-thumbnail" width="200" height="200">
        </div>
							<div class="col-12 text-center name">
								<div class="d-flex justify-content-between">
							<a href="${appName}user/edit?id=${user.id}" class="btn btn-secondary"><i class="fa fa-cog" style="font-size:24px"></i>
							Edit Profile</a> 
								</div>
							</div>
						</div>
					</div>
				</div>
				</div>
				
				<div class="profile p-2">
					<div class="container">
						<div class="row">
							<div class="col-12 d-flex justify-content-between">
								<span>Name: ${user.fullName}</span> <span class="mdi mdi-account"
									title="name" style="color: #ff5722;"></span>
							</div>
							<div class="col-12 d-flex justify-content-between">
								<span>Gender: ${user.gender}</span> <span class="mdi mdi-map-marker"
									title="gender" style="color: #ffc107;"></span>
							</div>
							<div class="col-12 d-flex justify-content-between">
								<span>E-mail Address: ${user.emailAddress} </span> <span
									class="mdi mdi-badge-account" title="emailAddress"
									style="color: #8bc34a;"></span>
							</div>
							
							<%if(session.getAttribute("user") != null){ %>
							<%if(session.getAttribute("userRole").equals("ROLE_STUDENT")){ %>
							<p>Courses:</p>
							<c:forEach items="${user.getCourses()}" var="course">
							<ul>
								<li><a href="${appName}course/detail?id=${course.courseId}">${course.courseName}</a></li>
							</ul>
							</c:forEach>
							<%}} %>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
</div>


