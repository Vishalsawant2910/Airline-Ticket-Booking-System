<%@page import="in.co.airline.ticket.airlineticket.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Profile Page</title>
<style>
body {
	background: url('/Airlineticket/resources/images/pexel6.jpg') top right
		no-repeat;
	background-attachment: fixed;
	background-size: cover;
	height: 100%;
}
</style>


</head>
<body>



	<nav>
		<!-- <div class="collapse navbar-collapse" id="navbarNav"> -->
		<ul class="navigation-menu">

			<li class="nav-item active"><a href="<c:url value="/welcome"/>"><i
					class="fa-solid fa-house"></i> Home<span class="sr-only">(current)</span></a>
			</li>

			<%
			UserDTO userBean = (UserDTO) session.getAttribute("user");
			boolean userLoggedIn = userBean != null;
			%>
			<%
			if (userLoggedIn) {
			%>

			<%
			if (userBean.getRoleId() == 1) {
			%>


			<li><a href="#"><i class="fa-solid fa-box"></i> Airport</a>
				<ul>
					<li class="nav-item "><a class="nav-link"
						href="<c:url value="/ctl/airport"/>"> Add Airport</a>
					<li class="nav-item "><a class="nav-link"
						href="<c:url value="/ctl/airport/search"/>"> Airport List</a></li>

				</ul></li>


			<li><a href="#"><i class="fa-solid fa-box"></i> Flight</a>
				<ul>

					<li class="nav-item "><a class="nav-link"
						href="<c:url value="/ctl/flight"/>">Add Flight</a></li>

					<li class="nav-item "><a class="nav-link"
						href="<c:url value="/ctl/flight/search"/>">Flight List</a></li>

					<li class="nav-item "><a class="nav-link"
						href="<c:url value="/ctl/manage"/>">Manage Flight</a></li>

					<li class="nav-item "><a class="nav-link"
						href="<c:url value="/ctl/manage/search"/>">Manage Flight List</a></li>
				</ul></li>

			<li><a href="#"><i class="fa-solid fa-box"></i> Invoice</a>
				<ul>

					<li class="nav-item "><a class="nav-link"
						href="<c:url value="/ctl/invoice/search"/>">Invoice List</a></li>

					<li class="nav-item "><a class="nav-link"
						href="<c:url value="/ctl/invoiceDetail/search"/>">Invoice
							Detail</a></li>

				</ul></li>
			<%
			} else if (userBean.getRoleId() == 2) {
			%>
			<li class="nav-item "><a class="nav-link"
				href="<c:url value="/home"/>"> <i class="fa-solid fa-box"></i>Search
					Flight
			</a></li>


			<li><a href="#"> <i class="fa-solid fa-box"></i>Invoice
			</a>
				<ul>

					<li class="nav-item "><a class="nav-link"
						href="<c:url value="/ctl/invoice/search"/>">Invoice List</a></li>

					<li class="nav-item "><a class="nav-link"
						href="<c:url value="/ctl/invoiceDetail/search"/>">Invoice
							Detail</a></li>

				</ul></li>
			<%
			}
			%>
			<li class="nav-item "><a class="nav-link"
				href="<c:url value="/profile"/>"> <i class="fa-solid fa-box"></i>
					My Profile
			</a></li>
			<li class="nav-item "><a class="nav-link"
				href="<c:url value="/changepassword"/>"> <i
					class="fa-solid fa-box"></i> Change Password
			</a></li>
			<%
			} else {
			%>
			<%
			}
			%>





			<%
			if (userLoggedIn) {
			%>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value="/login"/>"> <i class="fa-solid fa-box"></i>
					Logout
			</a></li>
			<%
			} else {
			%>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value="/login"/>">Sign In</a></li>
			<li class="nav-item "><a class="nav-link"
				href="<c:url value="/signUp"/>">Sign Up</a></li>
			<%
			}
			%>

		</ul>


	</nav>
</body>

</html>
