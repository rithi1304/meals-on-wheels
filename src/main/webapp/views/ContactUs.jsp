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
	/* Custom CSS for Contact Us Page */

/* Body Styles */
body {
    font-family: 'Lato', sans-serif;
    background-color: #f8f8f8;
}

/* Contact Section Styles */
.contact-section {
    padding-top: 50px;
}

.jumbotron {
    background-color: #fff;
    border-radius: 30px;
	margin-left: 200px;
	margin-right: 200px;
	margin-top: 50px;
	transition: box-shadow 0.3s ease;
}

.contact-section h2 {
    font-family: 'Montserrat', sans-serif;
    color: #333;
	font-weight: 300;
}

/* Form Styles */
.form-control {
    border-radius: 5px;
    border: 1px solid #ccc;
}

textarea.form-control {
    resize: none;
}

/* Button Styles */
.btn-default {
    background-color: #007bff9c;
    border-color: #007bff;
	color: white;
	transition: 0.7s;
	width: 15%;
	position: relative; /* Add relative positioning */
}

.btn-default:hover {
    background-color: #0063cc;
    border-color: #0063cc;
	color: white;
	text-align: center;
	width: 20%;
}

@keyframes slideInForm {
    from {
        opacity: 0;
        transform: translateY(-50px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Apply animation to form elements */
.contactus, .jumbotron {
    animation: slideInForm 1s ease forwards;
    opacity: 0; /* Start with opacity 0 to hide elements initially */
}

</style>
<script>
 $(document).ready(function() {
            var intervalId; // Variable to store the interval ID
            
            $('#name, #email, #comments').focus(function() {
                intervalId = setInterval(changeBoxShadow, 100); // Start the interval when the input field gains focus
            });

            $('#name, #email, #comments').blur(function() {
                clearInterval(intervalId); // Stop the interval when the input field loses focus
                $('.jumbotron').css('box-shadow', '0 0 20px rgba(0, 0, 0, 0.1)'); // Reset box-shadow when focus is lost
            });

            function changeBoxShadow() {
                var red = getRandomInt(0, 255);
                var green = getRandomInt(0, 255);
                var blue = getRandomInt(0, 255);
                var boxShadowColor = 'rgba(' + red + ',' + green + ',' + blue + ', 1)';
                $('.jumbotron').css('box-shadow', '0 0 20px ' + boxShadowColor);
            }

            function getRandomInt(min, max) {
                return Math.floor(Math.random() * (max - min + 1)) + min;
            }
        });

		// Trigger animation when the page loads
		window.onload = function() {
        var contactusElement = document.querySelector('.contactus');
        var jumbotronElement = document.querySelector('.jumbotron');
        
        // Delay the animation slightly for a staggered effect
        setTimeout(function() {
            contactusElement.style.opacity = 1;
            jumbotronElement.style.opacity = 1;
        }, 100);
    };	
</script>
</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid contactus">
		<div class="jumbotron">

				<div class="row">
					<h2 class="text-center">CONTACT US</h2>
				</div>
				
				<div class="row">
					<div class="col-sm-5">
						<p>Contact us and we'll get back to you within 24 hours.</p>
						<p>
							<span class="glyphicon glyphicon-map-marker"></span> Hyderabad, India
						</p>
						<p>
							<span class="glyphicon glyphicon-phone"></span> +95 1 123456
						</p>
						<p>
							<span class="glyphicon glyphicon-envelope"></span>
							inquiry@merymeals.com
						</p>
					</div>
					<div class="col-sm-7 slideanim">
						<div class="row">
							<div class="col-sm-6 form-group">
								<input class="form-control" id="name" name="name"
									placeholder="Name" type="text" required>
							</div>
							<div class="col-sm-6 form-group">
								<input class="form-control" id="email" name="email"
									placeholder="Email" type="email" required>
							</div>
						</div>
						<textarea class="form-control" id="comments" name="comments"
							placeholder="Comment" rows="5"></textarea>
						<br>
						<div class="row">
							<div class="col-sm-12 form-group">
								<center><button class="btn btn-default pull-right" type="submit">Send</button></center>
							</div>
						</div>
					</div>
				</div>

		</div>
	</div>


</body>
</html>
