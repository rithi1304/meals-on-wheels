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
    justify-content: space-around; /* Center cards horizontally */
    flex-wrap: wrap; /* Allow cards to wrap on smaller screens */
    max-width: 80%; /* Adjust as needed */
    margin: 0 auto; /* Center the card container */
}

.card {
    width: 40%; /* Adjust as needed; sets card width */
    margin-bottom: 20px; /* Adds some space between cards */
    border: 2px solid #ddd;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Adds a shadow effect */
    transition: box-shadow 0.3s ease; /* Adds smooth transition on hover */
}

.card:hover {
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Increases shadow on hover */
}

.card img {
    width: 100%; /* Ensures images fill the card width */
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
}

.card h2 {
    text-align: center;
    margin-top: 10px;
}

.card p {
    text-align: center;
    margin-bottom: 20px;
}

.card a {
    display: block;
    width: 50%;
    margin: 0 auto;
}

/* Center the welcome text vertically and horizontally */
.welcome-container {
    position: relative;
    height: 400px; /* Adjust height as needed */
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: -60px;
}

/* Limit the width of the welcome text */
.welcome-text {
    max-width: 80%;
    
}

/* Ensure the image fits within its container */
/* Ensure the image fits within its container and limits its height */
.welcome-image {
    max-width: 100%;
    height: auto;
    display: block;
    margin: 0 auto; /* Center the image horizontally */
    margin-top: -75px;
    border-radius: 40px;
    max-height: 300px; /* Adjust the maximum height as needed */
    transition: transform 0.3s ease; /* Add transition for smooth effect */
}
.welcome-image:hover {
   
    transform: scale(1.1); /* Increase scale to zoom in */
}

#welcome-heading, #welcome-paragraph{
    text-align: center;
}

.carousel-container {
            position:sticky;
            height: 500px; /* Adjust height as needed */
            overflow: hidden; /* Hide overflow */
        }

        .carousel-inner .item img {
        width: 60%; /* Adjust width as needed */
        height: 100%; /* Adjust height as needed */
        border-radius: 10px;
        /* object-fit: cover; Ensure images maintain aspect ratio and cover the entire container */
    }
    /* .left,.right{
        opacity: 0;
        transition: 1s;
    } 
    .left:hover,.right:hover{
        opacity: 1;
    }  */
    .carousel-control{
        opacity: 0;
        transition: 0.5s;
        border-radius: 50px;
        height: 100px;
        align-items: center;
        margin: auto;
        background-color: rgba(0, 0, 255, 0.171);
    }
    .carousel-control:hover{
        opacity: 1;
    }

    h3.special-heading {
    font-size: 24px;
    color: #ff6600; /* Orange color */
    text-transform: uppercase; /* Convert text to uppercase */
    font-weight: bold; /* Make the text bold */
    text-shadow: 2px 2px 2px #ccc; /* Add a subtle text shadow */
}
.ruler{
    background-color: black;
    width: 80%;
}


.card a.btn {
    display: block;
    width: 30%;
    margin: 0 auto;
    transition: width 0.3s ease; /* Add transition for smooth width change */
    position: relative; /* Ensure proper positioning for the pseudo-element */
}

.card a.btn:hover {
    width: 40%; /* Increase width on hover */
}

/* Add an emoji using a pseudo-element */


.card a#donate:hover::after {
    opacity: 1; /* Show the emoji on hover */
}
.card a#menu:hover::after {
    opacity: 1; /* Show the emoji on hover */
}

        /* Adjustments for smaller screens */
        @media (max-width: 768px) {
            .carousel-container {
                height: 200px; /* Adjust height for smaller screens */
            }
        }
/* Adjustments for smaller screens */
@media (max-width: 768px) {
    .welcome-container {
        height: auto; /* Allow the container to adjust height for smaller screens */
    }
}


</style>

</head>
<body>




	<%@ include file="header.jsp"%> <br>
    <div class="carousel-container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/3.jpg" alt="Slide 1" class="center-block">
                </div>

                <div class="item">
                    <img src="images/6.jpg" alt="Slide 2" class="center-block">
                </div>

                <div class="item">
                    <img src="images/5.jpg" alt="Slide 3" class="center-block">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
<br><br>
    <hr class="ruler">
<div class="welcome-container">
    <div class="welcome-text">
<h1 id="welcome-heading"><!--<center>Welcome to Merry Meals!</center>--></h1>
<p id="welcome-paragraph"></p>
    </div>
</div>
   <img src="images/welcome.jpg" alt="caring" class="welcome-image">
   <br><br>
   <hr class="ruler">
   <center>
   <div>
        <h3 class="special-heading">Explore More</h3>
   </div>
    </center>
    <br>
   
   <div class="card-container">
        <div class="card">
        <h2>Menu</h2>
        <br><br>
            <img src="images/menunew.jpg" alt="menu" style="width:80%"><br>
            
            <br><br><br><br><br><br>
            <p><a href="menu" class="btn btn-primary" id="menu">Menu</a></p>
        </div>
        
        <div class="card">
        <h2>Donate</h2>
            <img src="images/donate.jpg" alt="donate" style="height:65%;"><br>
            
            <br>
            <p><a href="donate" class="btn btn-primary" id="donate">Donate</a></p>
        </div>

    </div>

    <br>
	<br>
	<br>
	<br>
	<br>
    <script>
        // Function to animate typing effect for welcome text
        function typeWriter(text, i, id, delay) {
            if (i < text.length) {
                document.getElementById(id).innerHTML += text.charAt(i);
                i++;
                setTimeout(function() { typeWriter(text, i, id, delay); }, delay);
            }
        }

        // Call the typeWriter function when the page is loaded
        window.onload = function() {
            // Animate typing effect for welcome heading
            typeWriter("Welcome to Merry Meals!", 0, "welcome-heading", 100);
            
            // Animate typing effect for welcome paragraph
            setTimeout(function() {
                typeWriter("MerryMeal is a charitable organization that prepares and delivers a hot noon meal to qualified adults living at home who are unable to cook for themselves or maintain their nutritional status due to age, disease, or disability. The service is available Monday through Friday. Frozen meals are provided to members who are not within a 10-kilometer radius of their outsourced kitchens and support over the weekend. MerryMeal has partnered with several food service providers across the country to provide the quickest delivery possible.", 0, "welcome-paragraph", 20);
            }, 1500);
        };
    </script>
	
<%@ include file="footer.jsp"%>

</body>
</html>

