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
	/* Improve table appearance */
.table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
	margin-left: 100px;
	padding: 10px;
}

.table th,
.table td {
    padding: 8px;
    text-align: left;
	align-items: center;
    border-bottom: 1px solid #ddd;
}

.table th {
    background-color: #f2f2f2;
}

/* Add hover effect to table rows */
.table tbody tr:hover {
    background-color: #f5f5f5;
}

/* Style delete button */
.btn-danger {
    background-color: #d6251f;
    border-color: #d6251f;
    position: relative; /* Required for pseudo-elements positioning */
    overflow: hidden; /* Hides the emoji initially */
    transition: width 0.3s ease; /* Smooth transition for width change */
	width: 50%;
	align-items: center;
	display: flex;
	justify-content: center;
	text-align: center;
}

.btn-danger:hover {
    background-color: red;
    border-color: red;
	width: 60%;
}

/* Add emoji */

/* Show emoji on hover */
.btn-danger:hover::before {
    opacity: 1;
}

/* Increase button width on hover to accommodate emoji */
.btn-danger:hover {
    width: 85%;
    padding-left: 30px; /* Adjust padding to make space for emoji */
	

}

#delete{
	align-items: left;
	display: flex;
	justify-content: center;
	float: right;
	padding: 10px;
}


</style>
</head>

<body>

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1">
		<div>
			<h2 class="text-center">User List</h2>

			<div class="row">

				<div class="col-md-10">
				
					<c:if test="${not empty userlists}">
					
					<table class="table table-striped table-bordered">

						<thead>
							<tr>
								<th>No.</th>
								<th>User ID </th>
								<th>User Name </th>
								<th>Adderss</th>
								<th>Password</th>
								<th>Actions</th>
							</tr>
						</thead>
						
						<tbody>
						
						<% int i=1; %>
						<c:forEach var="user" items="${userlists}">
						
							<tr>
								<td><%=i %></td>
								<td>${user.id}</td>
								<td>${user.userName}</td>
								<td>${user.adress}</td>
								<td>******</td>

								<td>
								<sec:authorize access="hasRole('Administrator')">
									<a href="delete?id=${user.id}">
										<button class="btn btn-danger" id="delete">Delete</button>
								</sec:authorize>
								
							
								</td>
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