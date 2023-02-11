<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/f757c7087e.js"></script>
</head>
<body>
	<div class="info-bar bg-dark" style="color: white">
		<div
			class="container d-flex justify-content-between align-items-center p-1">
			<div class="">
				<span class="ibar-title"><i
					class="fa-solid fa-phone-volume me-2"></i>Hotline:</span> <span
					class="me-2"> 0123456789</span> | <span class="ibar-title"><i
					class="fa-brands fa-facebook-f me-2"></i> Facebook: </span> <a
					style="color: white" class="me-2">phamphuc</a> | <span
					class="ibar-title"><i class="fa-solid fa-language me-2"></i>
					Language:</span> <select style="color: white"
					class="rounded mx-2 bg-transparent border-0 text-center">
					<option style="color: black" value="en">English</option>
					<option style="color: black" value="vn">Vietnamese</option>
				</select>
			</div>
			<div class="" style="color: white">
				<c:choose>
					<c:when test="${sessionScope.username != null}">
						<div class="nav-item dropdown d-inline-flex">
							<a style="color: white"
								class="nav-link ibar-title py-0 dropdown-toggle" href="#"
								id="navbarDropdown" role="button" data-toggle="dropdown"
								aria-expanded="false"> <i class="fa-solid fa-user me-2"></i>
								Hi, PhamTrongPhuc
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">User Profile</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="">Logout</a>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<i class="fa-solid fa-user"></i>
						<a style="color: white" class="ibar-title me-3"
							href="/account/login">Login</a> |
		                    <a style="color: white" href="#"
							class="ibar-title">Register</a>
					</c:otherwise>
				</c:choose>
			</div>
			<div>
				<a class="btn btn-danger cart-button btn-block" href="/cart/view">
					Go to cart <span>(<fmt:formatNumber type="number"
							value="${cartQuantity}" />)
				</span>
				</a>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container">
			<a class="navbar-brand" href="#">
				<h1>DAY LA LOGO</h1>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Portfolio</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					</li>

				</ul>

			</div>
		</div>
	</nav>
</body>
</html>