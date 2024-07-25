<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<!-- Access the Static Resources  using spring Url  -->
<!--
<spring:url value="/css/style.css" var="myCss" />
<spring:url value="/js/custom.js" var="myJS" />

<link href="${myCss}" rel="stylesheet" />
<script src="${myJS}"></script>
-->

<!--  Access the Static Resources without using spring URL -->



<style>
	/* Body and Typography */
body {
    font-family: 'Lato', sans-serif;
    font-size: 16px;
    line-height: 1.6;
    color: #333;
    background-color: #f8f8f8;
}

h3 {
    font-family: 'Montserrat', sans-serif;
    font-size: 24px;
}

/* Form Styling */
.form-group {
    margin-bottom: 20px;
}

label {
    font-weight: bold;
}

input[type="text"],
select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

input[type="submit"] {
    width: 50%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color: #00aeff;
    color: #fff;
    cursor: pointer;
    transition: 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #0056b3;
	width: 60%;
}

/* Alert Box */
.alert {
    padding: 15px;
    margin-bottom: 20px;
    border: 1px solid transparent;
    border-radius: 4px;
}

.alert-success {
    color: #3c763d;
    background-color: #dff0d8;
    border-color: #d6e9c6;
}

.col-md-4{
	border: 1px solid black;
	border-radius: 20px;
	padding: 20px;
	box-sizing: border-box;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 2); /* Adding box shadow */
}

#hide{
	opacity: 0;
}
.margin{
	font-weight: 900;
}

.input-group-addon{
	border: none;
	padding: 6px 12px;
	font-size: 14px;
	float: right;
	text-align: center; 
    width: 10%;	
}

</style>
</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin">Register Here !</h3>

		<div class="row">

			<div class="col-md-4" id="hide"></div>

			<div class="col-md-4">


				<c:if test="${register_success != null}">
					<div class="alert alert-success">
						<p>${register_success} Click <a href="cus_login_page"> Sign In</a> to use our portal...</p>
					</div>
				</c:if>

			<form:form action="save" method="post" modelAttribute="user">
				
				<div class="form-group">
					<label for="username">Your Login User Name:</label>
					<form:input path="userName" class="form-control" required="true"/>
					
				</div>
				
				<div class="form-group">
				<h3>Choose Your Identity</h3>
					<form:select path="identity">  
        				<form:option value="2" label="Member"/>  
        				<form:option value="3" label="Caregiver"/>   
       				</form:select>  
					</div>
				
				<div class="form-group">
					<label for="adress">Your Home Adress :</label>
					<form:input path="adress" class="form-control" required="true"/>
					
				</div>
				
				
				<div class="form-group">
					<label for="password">Your Password:</label>
					<form:password path="password" class="form-control" required="true"/>
					<div class="input-group-addon">
						<span toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
					</div>	
				</div>
				
				<input type="submit" value="Register" class="btn btn-primary"/>
					
			</form:form>

			</div>

		</div>

	</div>
	<script>
				$(".toggle-password").click(function() {
			var selector = $(this).attr("toggle");
			var input = $(selector);
			input.attr("type") === "password" ? input.attr("type", "text") : input.attr("type", "password");
			$(this).toggleClass("fa-eye fa-eye-slash");
		});
	</script>
	<br><br><br>
</body>
</html>
