<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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

	<!-- Eye Logo -->

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />


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
	 .form-control {
        border-radius: 20px; /* Rounded corners for input fields */
    }
    
    .btn-primary {
        background-color: #13a1da; /* Green */
        border: none;
        color: white;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        border-radius: 10px; /* Rounded corners for buttons */
        transition-duration: 0.7s;
		width: 35%;

    }

    .btn-primary:hover {
        background-color: #0073b6; /* Darker green on hover */
        color: white;
		width: 45%;
    }
	.alert-danger {
        color: #721c24;
        background-color: #f8d7da;
        border-color: #f5c6cb;
        border-radius: 10px;
        padding: .75rem 1.25rem;
        margin-bottom: 1rem;
    }
	.col-md-4 {
	border: 1px solid #ccc;
    padding: 30px;
    border-radius: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
	margin-left: 140px;
	width: 20%;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.3); /* Add shadow effect */
	background-color:rgba(192, 234, 247, 0.507);
}
#hide{
	border: 0;
	opacity: 0;
}

.animated-border {
    position: relative;
    border-radius: 20px;
	border-width: 2px; /* Thicker border */
    transition: border-color 0.5s;
}

@keyframes animateBorder {
    0% { border-color: #f00; }
    25% { border-color: #0f0; }
    50% { border-color: #00f; }
    75% { border-color: #ff0; }
    100% { border-color: #f00; }
}

.animated-border:focus {
    animation: animateBorder 2s infinite;
    outline: none;
}

body {
    background-color: white; /* Light blue container background */
}

.container-fluid {
    background-color: white; /* Light blue container background */
}


/* Add animation for the Join Us! text */
@keyframes changeColor {
            0% { color: red; }
            25% { color: green; }
            50% { color: blue; }
            75% { color: orange; }
            100% { color: purple; }
        }

        .random-color {
            animation: changeColor 2s infinite;
        }
		#join-us{
			transition: 0.5s;
			font-weight: 1000;
		}

</style>
</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin" id="join-us">Join Us!</h3>

		<div class="row">
			<div class="col-md-4" id="hide"></div>
			<div class="col-md-4">


				<c:if test="${error_string != null}">

					<div class="alert alert-danger">
						${error_string}
					</div>

				</c:if>

				
				<form action="/login" method="post">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />

					<div class="form-group">

						<label for="username">User Name:</label>
						<input type="text" name="username" id="username" value="" class="form-control animated-border"></input>
					</div>

					<div class="form-group">
						<label for="password">Password:</label>
						<div class="input-group">
						 <input type="password" name="password" id="password" value="" class="form-control animated-border"></input>
							<div class="input-group-addon">
								<span toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>	
						</div>
					</div>

					<input type="submit" name="Login" value="Login"
						class="btn btn-primary"></input>
				</form>
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


		// JavaScript to generate random colors
        function getRandomColor() {
            var letters = '0123456789ABCDEF';
            var color = '#';
            for (var i = 0; i < 6; i++) {
                color += letters[Math.floor(Math.random() * 16)];
            }
            return color;
        }

        // JavaScript to apply random colors to the text
        $(document).ready(function() {
            setInterval(function() {
                $('#join-us').css('color', getRandomColor());
            }, 500); // Change color every 5 seconds
        });
	</script>
	

</body>
</html>
