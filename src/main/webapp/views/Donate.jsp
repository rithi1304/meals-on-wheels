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


<!-- Access the Static Resources  using spring Url  -->
<!--
<spring:url value="/css/style.css" var="myCss" />
<spring:url value="/js/custom.js" var="myJS" />

<link href="${myCss}" rel="stylesheet" />
<script src="${myJS}"></script>
-->

<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>


<style>
	 /* Body style */
	 body {
            background-color: #ffffff; /* White background */
        }

        /* Container style */
        .container-fluid {
            background-color: #309be280; /* Blue background */
            color: #ffffff; /* White text color */
            padding: 50px; /* Add some padding */
			margin-left: 300px;
			margin-right: 300px;
			margin-top: 40px;
			border-radius: 50px;
			position: relative;
            overflow: hidden;
        }

        /* Form style */
        .form-group label {
            color: #ffffff; /* White label text color */
        }

        .form-group .form-control {
            background-color: #ffffff; /* White input background */
            color: #3498db; /* Blue input text color */
        }

        /* Button style */
        input[type="submit"].btn-primary {
            background-color: #3498db; /* Blue button background */
            border-color: #3498db; /* Blue button border color */
            color: #ffffff; /* White button text color */
			border-radius: 10px;
			width: 40%;
			transition: 0.7s;
			position: relative; 
        }

        input[type="submit"].btn-primary:hover {
            background-color: #2980b9; /* Darker blue on hover */
            border-color: #2980b9; /* Darker blue border on hover */
			width: 50%;
        }


        /* Alert style */
        .alert {
            background-color: #ffffff; /* White alert background */
            border-color: #3498db; /* Blue alert border color */
            color: #3498db; /* Blue alert text color */
			border-radius: 20px;
        }

        .alert a {
            color: #3498db; /* Blue link color */
        }

        .alert a:hover {
            color: #2980b9; /* Darker blue link color on hover */
        }

		#supportText {
        font-size: 20px; /* Adjust the font size as needed */
        position: absolute;
		font-weight: bold;
        left: 50%;
        transform: translate(-50%, -50%);
		transition: 0.5s;
		margin-top:20px;
    }
</style>
<script>
	 $(document).ready(function(){
        $(".form-control").focus(function(){
            $(".container-fluid").append("<div id='supportText'>Thanks for your Support.</div>");
        });
        $(".form-control").focusout(function(){
            $("#supportText").remove();
        });
        // Function to generate a random color
        function getRandomColor() {
            var letters = '0123456789ABCDEF';
            var color = '#';
            for (var i = 0; i < 6; i++) {
                color += letters[Math.floor(Math.random() * 16)];
            }
            return color;
        }
        // Function to update text color with random color
        function updateTextColor() {
            $('#supportText').css('color', getRandomColor());
        }
        // Set interval to update text color every 500ms
        setInterval(updateTextColor, 500);
    });
</script>
</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin">Donate Here ! </h3>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


				<c:if test="${donate_success != null}">
					<div class="alert alert-success">
						<p>${donate_success} Click <a href="donatelist"> Click Here</a> to use our portal...</p>
					</div>
				</c:if>

			<form:form action="donatem" method="post" modelAttribute="donate">

						<div class="form-group">
					<label for="name">Enter Your Name:</label>
					<form:input path="Name" class="form-control" required="true"/>
				</div>
				
				<div class="form-group">
					<label for="donateprice">Enter Donate Price:</label>
					<form:input path="donateprice" class="form-control" required="true"/>
				</div>
				
				<input type="submit" value="Donate" class="btn btn-primary" />
					
			</form:form>

			</div>

			<div class="col-md-4"></div>

		</div>

	</div>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@ include file="footer.jsp"%>
</body>
</html>

