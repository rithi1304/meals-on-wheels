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

.card-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            max-width: 100%;
            margin: 0 auto;
			margin-top: 25px;
        }

        .card {
            width: calc(33.33% - 20px);
            margin-bottom: 20px;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 15px;
            box-sizing: border-box;
			transition: transform 0.3s, box-shadow 0.3s; /* Add transition effects */
			margin-right: 10px; /* Add margin to the right */
        }
		.card img {
            width: 100%; /* Ensure images fill the container */
            height: auto; /* Maintain aspect ratio */
            border-radius: 10px; /* Rounded corners for images */
        }

		.card h2 {
    text-align: center; /* Center text */
}

.card .btn {
    width: 20%; /* Initial width of the button */

   text-align: center;
   color: blue;
	align-items: center;
	justify-content: center;
    transition: width 0.5s, padding 0.3s; /* Add transition effect */
}
 .btn:hover {
    width: 50%; /* Widened width on hover */
	padding-left: 10%; /* Add padding to the left */
    padding-right: 10%;
}

.card:hover{
	transform: translateY(-15px); /* Move card vertically upwards */
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.13); /* Add shadow effect */
}
.card:last-child {
    margin-right: 0; /* Remove margin from the last card */
}

.image-container img {
    width: 100%;
    height: auto;
    border-radius: 10px;
}
.description {
    position: absolute;
	margin-bottom:  50%;
    bottom: 0;
    left: 0;
    width: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    color: white;
    padding: 20px;
    opacity: 0;
    transition: opacity 0.5s;
}

.image-container:hover .description {
    opacity: 1;
}
.price{
	font-weight: bold;
	margin-top: 10px;
}
    </style>
    
</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>
	
	<div class="card-container">
        <div class="card">
        
        
        <h2>Fried Rice</h2>
		<div class="image-container">
            <img src="images/1.jpeg" alt="Rice" style="width:100%">
            <div class="description"> A classic dish made with stir-fried rice, vegetables, and often mixed with eggs and a variety of seasonings.</div>
			</div>
            <br>
            <sec:authorize access="hasRole('Administrator')">
									<a href="regimenu">
										<center><button class="btn btn-dark" >Buy</button></center>
									</a>
			</sec:authorize>
			 <sec:authorize access="hasRole('Users')">
									<a href="regimenu">
										<center><button class="btn btn-dark" >Buy</button></center>
									</a>
			</sec:authorize>
								

        </div>
        
        <div class="card">
        <h2>Fried Noodles</h2>
		<div class="image-container">
            <img src="images/3.jpg" alt="Noodles" style="width:100%">
            <div class="description">Stir-fried noodles cooked with a mix of vegetables and sauces, offering a savory and flavorful experience.</div>
		</div>
            <br>
            <sec:authorize access="hasRole('Administrator')">
									<a href="regimenu">
										<center><button class="btn btn-dark">Buy</button></center>
									</a>
			</sec:authorize>
			 <sec:authorize access="hasRole('Users')">
									<a href="regimenu">
										<center><button class="btn btn-dark" >Buy</button></center>
									</a>
			</sec:authorize>
								

        </div>
        
        <div class="card">
        <h2>Soup Noodles</h2>
		<div class="image-container">
            <img src="images/4.jpeg" alt="Soup" style="width:100%">
            <div class="description">Noodles served in a comforting soup broth, often accompanied by vegetables, meat, or seafood.</div>
		</div>
            <br>
            <sec:authorize access="hasRole('Administrator')">
									<a href="regimenu">
										<center><button class="btn btn-dark">Buy</button></center>
									</a>
			</sec:authorize>
			 <sec:authorize access="hasRole('Users')">
									<a href="regimenu">
										<center><button class="btn btn-dark" >Buy</button></center>
									</a>
			</sec:authorize>
								

        </div>

    </div>
    
    <div class="card-container">
        <div class="card">
        <h2>Burger with Fries</h2>
		<div class="image-container">
            <img src="images/5.jpg" alt="Burger" style="width:100%">
            <div class="description">A juicy burger served with crispy fries, offering a delightful combination of flavors and textures.</div>
		</div>
            <br>
            <sec:authorize access="hasRole('Administrator')">
									<a href="regimenu">
										<center><button class="btn btn-dark">Buy</button></center>
									</a>
			</sec:authorize>
			 <sec:authorize access="hasRole('Users')">
									<a href="regimenu">
										<center><button class="btn btn-dark" >Buy</button></center>
									</a>
			</sec:authorize>
								

        </div>
        
        <div class="card">
        <h2>Carbonara</h2>
		<div class="image-container">
            <img src="images/2.jpeg" alt="Carbonara" style="width:100%">
            <div class="description">A pasta dish made with spaghetti, eggs, cheese, and pancetta or bacon, creating a creamy and indulgent meal.</div>
		</div>
		
            <br>
            <sec:authorize access="hasRole('Administrator')">
									<a href="regimenu">
										<center><button class="btn btn-dark">Buy</button></center>
									</a>
			</sec:authorize>
			 <sec:authorize access="hasRole('Users')">
									<a href="regimenu">
										<center><button class="btn btn-dark" >Buy</button></center>
									</a>
			</sec:authorize>
								

        </div>
        
        <div class="card">
        <h2>Chicken Bolognese</h2>
		<div class="image-container">
            <img src="images/6.jpg" alt="Bolognese" style="width:100%">
			<div class="description">Spaghetti topped with a rich and hearty tomato-based sauce with ground chicken, providing a satisfying and flavorful experience.</div>
		</div>
            
            <br>
            <sec:authorize access="hasRole('Administrator')">
									<a href="regimenu">
										<center><button class="btn btn-dark">Buy</button></center>
									</a>
			</sec:authorize>
			 <sec:authorize access="hasRole('Users')">
									<a href="regimenu">
										<center><button class="btn btn-dark" >Buy</button></center>
									</a>
			</sec:authorize>
								

        
    </div>
    
    <br>
	<br>
	<br>
<%@ include file="footer.jsp"%>	

</body>
</html>
