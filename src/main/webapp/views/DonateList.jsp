<%@ page contentType="text/html; charset=US-ASCII"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>

<style>

	/* CSS to set background color to light blue */
/* CSS for gradient background */
body {
  background: linear-gradient(to bottom, #e0e9f1, #b5d8ff); /* Adjust the color codes as needed */
}


	/* Table styling */
	.table{
	margin-left: 150px;
	width: 70%; 
	}
	.table-striped tbody tr:nth-of-type(odd) {
	  background-color: #f9f9f9;
	}
	.table-striped tbody tr:hover {
	  background-color: #f5f5f5;
	}
	.table-bordered {
	  border: 1px solid rgb(0, 0, 0);
	  border-radius: 20px;
	}
	.table-bordered th, .table-bordered td {
	  border: 1px solid rgb(0, 0, 0);
	  padding: 8px;
	  background-color: white;
	 
	}
	/* Header and Footer styling */
	.header, .footer {
	  background-color: #333;
	  color: #fff;
	  padding: 15px 0;
	  text-align: center;
	}
	/* CSS to center the table */
.container-fluid.bg-1 > div > .row > .col-md-10 {
  display: flex;
  justify-content: center;
  align-items: center; 
}
/* CSS to adjust table width */
.table-striped.table-bordered th,
.table-striped.table-bordered td {
 /* width: 65%;  Adjust this value to make the table wider */
  padding: 12px; /* Optional: Increase padding for better spacing */
  
}

/* CSS for sliding animation */
@keyframes slideIn {
  0% { transform: translateY(-100%); }
  100% { transform: translateY(0); }
}

.container-fluid.bg-1 > div {
  animation: slideIn 1s ease forwards;
}

  </style>
</head>

<body onload="animatePage()">

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1">
		<div>
			<h2 class="text-center">Donate List</h2>

			<div class="row">

				<div class="col-md-10">
				
					<c:if test="${not empty donatelists}">
					
					<table class="table table-striped table-bordered">

						<thead>
							<tr>
								<th>No.</th>
								<th>Name</th>
								<th>Donate Time</th>
								<th>Donate Price</th>
							</tr>
						</thead>
						
						<tbody>
						
						<% int i=1; %>
						<c:forEach var="donate" items="${donatelists}">
						
							<tr>
								<td><%=i %></td>
								<td>${donate.name}</td>
								<td>${donate.donate_date_time}</td>
								<td>${donate.donateprice}</td>
							</tr>
							<% i++; %>
						</c:forEach>

						</tbody>
					</table>
					
					</c:if>
					
				</div>
			</div>
			
			<!--  End User Lists  -->

		</div>
	</div>
	<script>
		function animatePage() {
  // Add class to trigger animation
  document.querySelector('.container-fluid.bg-1 > div').classList.add('slide-in');
}

	</script>
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