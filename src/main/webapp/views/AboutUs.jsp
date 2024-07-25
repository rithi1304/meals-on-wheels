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
    /* Custom color theme */
    body {
        background-color: #fff; /* White background */
        font-family: 'Lato', sans-serif;
    }

    .jumbotron {
        background-color: #dff0d8; /* Light greenish blue background for jumbotron */
        color: #333; /* Dark text color */
		transform: scale(0.8); /* Initially set scale to 0.8 */
        opacity: 0; /* Initially set opacity to 0 */
        transition: transform 0.8s ease-out, opacity 0.8s ease-out; /* Transition for scale and opacity */
		margin-left: 100px;
		margin-right: 100px;
		margin-top: 50px;
    }

	
    .aboutus h2 {
		font-weight: bold;
		text-align: center;
		animation: animateRainbow 5s linear infinite;
		margin-bottom: 20px;
    }
	@keyframes animateRainbow {
        0% {
            color: red;
        }
        16.67% {
            color: orange;
        }
        33.33% {
            color: yellow;
        }
        50% {
            color: green;
        }
        66.67% {
            color: blue;
        }
        83.33% {
            color: indigo;
        }
        100% {
            color: violet;
        }
    }

    .aboutus p {
        color: #555; /* Dark gray text color */
		; 
    }

	


    .btn-primary {
        background-color: #5cb5b8; /* Light green button color */
        border-color: #5cb5b8; /* Light green border color */
		transition: 0.7s;
		width: 15%;
    }

    .btn-primary:hover,
    .btn-primary:focus {
        background-color: #2363b6; /* Slightly darker green on hover/focus */
        border-color: #2363b6; /* Slightly darker green border on hover/focus */
		width: 20%;
    }
</style>
</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid aboutus">
		<div class="jumbotron">
			<h2>WE NEED YOUR HELP !</h2>



			<p class="lead">MerryMeal is a charitable organization that	prepares and delivers a	hot	noon meal
				to qualified adults living at home who are unable to cook for themselves or	maintain their nutritional	
				status due	to age, disease, or	disability.	The	service	will be available Monday through Friday.	</p>

			<hr class="my-4">
			<p>Frozen meals	will be	provided to	members	who	are	not	within a 10-kilometer radius of	their outsourced	
			kitchens and support over the weekend. MerryMeal has partnered with	several	food service providers across	
			the	country	to provide the	quickest delivery possible.	</p>
			<p class="lead">
				<center><a class="btn btn-primary btn-lg" href="new" role="button">Join Us Now!</a></center>
			</p>
		</div>
	</div>

	<script>
		 // Function to animate the jumbotron when the page loads
		 function animateJumbotron() {
        var jumbotron = document.querySelector('.jumbotron');
        jumbotron.style.transform = 'scale(1)';
        jumbotron.style.opacity = '1';
    }

    // Wait for the page to fully load before triggering the animation
    window.onload = function() {
        animateJumbotron();
    };
	</script>
</body>
</html>
