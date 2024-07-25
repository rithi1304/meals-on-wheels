
<style>
.logout{
	transition:0.5s;
	width:100%;
}
.logout:hover{
	width:120%;
}
li a {
font-size:18px;
}
</style>
<nav class="navbar navbar-primary">

	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<ul class="nav navbar-nav navbar-laft"> <li><a href="Home">Merry Meals</a></li>
			</ul>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">

				<sec:authorize access="!isAuthenticated()">
				    
					<li><a href="cus_login_page" >Login</a></li>
					<li><a href="new">Register</a></li>
					<li><a href="about">About Us</a></li>
					<li><a href="contact">Contact Us</a></li>
					<li><a href="donate">Donate</a></li>
					
				</sec:authorize>


				<sec:authorize access="isAuthenticated()">

				<sec:authorize access="hasRole('Users')">
                <li><a href="donate">Donate</a></li>
                <li><a href="donatelist">Donate List</a></li>
				<li><a href="menu">Menu</a></li>
                <li><a href="partners">Partners</a></li>
				</sec:authorize>
				
				<sec:authorize access="hasRole('Administrator')">
					 <li><a href="member">Member</a></li>
					 <li><a href="regimenu">RegiMenu</a></li>
					<li><a href="partners">Partners</a></li>
					 
				</sec:authorize>
					 
			   <sec:authorize access="hasRole('Caregiver')">
                <li><a href="donate">Donate</a></li>
                <li><a href="donatelist">Donate List</a></li>
				<li><a href="menu">Menu</a></li>
                <li><a href="partners">Partners</a></li>
                <li><a href="member">Member</a></li>
					 
				</sec:authorize>
				
					
			    <!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
					
					<li>
					<form action="logout" method="post" style="padding:7px;">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
							<input type="submit"
							name="Logout" value="Logout" class="btn btn-primary logout"></input>
					</form>
					</li>
				</sec:authorize>
			</ul>
		</div>
	</div>
</nav>
