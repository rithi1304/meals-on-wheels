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
        #header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
            font-size: 20px;
        }

        /* Table style */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
        }

        th {
            background-color: #f2f2f2;
        }
        /* Photo container style */
        .photo-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .photo {
            width: 350px; /* Adjust the width as needed */
            height: 350px; /* Adjust the height as needed */
            margin: 0;
            border: 3px solid #333;
            border-radius: 10px;
            /* position: absolute; Position absolutely inside the container */
            animation: slideToLeft 10s linear infinite; /* Animation */
            transition: transform 0.5s ease; /* Smooth transition */
        }

        @keyframes slideToLeft {
            0% {
                transform: translateX(100%);
            }
            50% {
                transform: translateX(-100%);
            }
            100%{
              transform: translateX(100%);
            }
        }

        .table-container{
          padding: 40px;
        }
        h1{
          text-align: center;
          font-weight: bold;
          text-decoration: underline;
        }
</style>

</head>
<body>

<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>
	
<h1>Our Partners</h1>
<div class="table-container">
<table>

  <tr>
    <th>Company</th>
    <th>Contact</th>
    <th>Country</th>
  </tr>
  
  <tr>
    <td>Mari Mari</td>
    <td>Joshua</td>
    <td>Malaysia</td>
  </tr>
  
  <tr>
    <td>Songket</td>
    <td>Rithika</td>
    <td>India</td>
  </tr>
  
  <tr>
    <td>Marry Brown</td>
    <td>Rajes</td>
    <td>Myanmar</td>
  </tr>
  
</table>
</div>
<br>
<br>

<div class="photo-container">
    <img class="photo" src="images/mari.jpg" alt="Photo 1">
    <img class="photo" src="images/Songket.jpg" alt="Photo 2">
    <img class="photo" src="images/marry.jpg" alt="Photo 3">
</div>


    <br>
	<br>
	<br>
	<br>
	<br>
	
<%@ include file="footer.jsp"%>

</body>
</html>

