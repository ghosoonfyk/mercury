<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<div id="login">
	<div class="container">
		<div id="login-row"
			class="row justify-content-center align-items-center">
			<div id="login-column" class="col-md-6">
				<div id="login-box" class="col-md-12">
	<form id="login-form" class="form" action="${appName}user/edit" method="post">
		<h1>Edit Profile</h1>
	<div class="form-group">
		<label>Full Name</label> 
		<input class="form-control" type="text" name="fullName" value="${user.fullName}"><br>
	</div>
	
	<div class="form-group">
		<label>Gender</label> 
		<input class="form-control"	type="text" name="gender" value="${user.gender}"><br>
	</div>

	<div class="form-group">
		<label>E-mail Address</label> 
		<input class="form-control" type="email" name="emailAddress" value="${user.emailAddress}"><br>
	</div>
	
	<div class="form-group">
		<label>Password</label> 
		<input class="form-control" type="password" name="password" value="${user.password}"><br>
	</div>
	
	<div class="form-group" >
		<input type="hidden" name="id" value="${user.id}">
		<input class="form-control" type="hidden" name="role" value="${user.role}">
	</div>
	
	<div class="form-group">
		<label>Profile Picture</label> 
		<input class="form-control" type="text" name="image" value="${user.image}"><br>
	</div>

	<button class="btn btn-primary" type="submit">Submit</button>
	<br>
</form>
				</div>
			</div>
		</div>
	</div>
	</div>