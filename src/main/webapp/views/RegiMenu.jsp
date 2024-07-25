<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

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


<style>
	/* Custom CSS for Regimenu page */

/* Body styling */
body {
    font-family: 'Lato', sans-serif;
    background-color: #f8f9fa; /* Light gray background */
}

/* Form container styling */
.container-fluid {
    padding: 50px 0; /* Add space around the form */
}

/* Form styling */
form {
    background-color: #fff; /* White background for the form */
    padding: 30px;
	border: 1px solid black;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add shadow to the form */
}

/* Form input and select styling */
.form-group {
    margin-bottom: 20px;
}

input[type="text"],
select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}



.btn{
	width: 20%;
    padding: 10px;
    background-color: #008cff; /* Bootstrap primary color */
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
    transition: 0.5s ease;

}
.btn:hover{
	background-color: #0012b3; 
	width: 24%; /* Increase width on hover */
	position: relative; /* Position relative for pseudo-element */
	padding-left: 15px; /* Increase padding on hover */
    padding-right: 15px; /* Increase padding on hover */
}
.btn:hover::after{ /* Add emoji using CSS pseudo-element */
    position: relative; /* Position the emoji absolutely */
    top: 50%; /* Align the emoji vertically */
    right: 10px; /* Align the emoji to the right side */
    transform: translateY(-50%); /* Center the emoji vertically */
    font-size: 10px; /* Adjust emoji size */
}
/* Alert styling */
.alert {
    margin-top: 20px;
}

.alert p {
    margin-bottom: 0;
}

/* Responsive styling for smaller screens */
@media (max-width: 768px) {
    form {
        padding: 20px;
    }
}

.col-md-4{
	border: 1px solid black;
	border-radius: 20px;
	padding: 10px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.9);
	background-size: cover;
}

#hide{
	opacity: 0;
}


</style>

<script>
$(document).ready(function(){
    $('#food_name').on('change', function() {
        var selectedFood = $(this).val();
        var imageUrl = '';
        // Set background image URL based on selected food
        switch(selectedFood) {
            case 'Fried Rice':
                imageUrl = 'images/1.jpeg';
                break;
            case 'Fried Noodles':
                imageUrl = 'images/2.jpeg';
                break;
            case 'Soup Noodles':
                imageUrl = 'images/3.jpg';
                break;
            case 'Burger with Fries':
                imageUrl = 'images/4.jpeg';
                break;
            case 'Carbonara':
                imageUrl = 'images/5.jpg';
                break;
            case 'Chicken Bolognese':
                imageUrl = 'images/6.jpg';
                break;
            default:
                // Default image if no match found
                imageUrl = 'url_to_default_image.jpg';
        }
        // Apply background image to the col-md-4 element
        $('.col-md-4').css('background-image', imageUrl);
    });
});
</script>
</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin">Register Your Menu Here ! </h3>

		<div class="row">

			<div class="col-md-4" id="hide"></div>

			<div class="col-md-4">


				<c:if test="${buy_success != null}">
					<div class="alert alert-success">
						<p>${buy_success} Click <a href="menu"> Click Here</a> to use our portal...</p>
					</div>
				</c:if>

			<form:form action="savemenu" method="post" modelAttribute="menu">
				<div class="form-group">

						<label for="">Food Name:</label><br>
        <select id="food_name" name="Food">
            <option value="Fried Rice">Fried Rice</option>
            <option value="Fried Noodles">Fried Noodles</option>
            <option value="Soup Noodles">Soup Noodles</option>
            <option value="Burger with Fries">Burger with Fries</option>
            <option value="Carbonara">Carbonara</option>
            <option value="Chicken Bolognese">Chicken Bolognese</option>
            
        </select>
					</div>

					<div class="form-group">

						<label for=adress>Your Home Adress:</label> 
						<input type="text" name="adress" id="adress" value="" class="form-control"></input>
					</div>
					
					<div class="form-group">
				<h3>Choose Your Distance</h3>
	<form:select path="food_type">  
        <form:option value="Frozen" label="more than 10km"/>  
        <form:option value="Non-Frozen" label="less than 10km"/>   
    </form:select> 
					</div>
				<input type="submit" value="Order" class="btn btn-primary"/>
			</form:form>

			</div>


			

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

