<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<link rel="stylesheet" href="<c:url value='/css/style.css'/> ">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="<c:url value=' /imgs/icons/favicon.ico'/> " />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value=' /vendor/bootstrap/css/bootstrap.min.css'/> ">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value=' /fonts/font-awesome-4.7.0/css/font-awesome.min.css'/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value=' /fonts/Linearicons-Free-v1.0.0/icon-font.min.css'/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value=' /vendor/animate/animate.css'/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value=' /vendor/css-hamburgers/hamburgers.min.css'/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value=' /vendor/animsition/css/animsition.min.css'/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value=' /vendor/select2/select2.min.css'/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value=' /vendor/daterangepicker/daterangepicker.css'/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value=' /csss/util.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value=' /csss/main.css'/>">
<!--===============================================================================================-->

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.0/angular.min.js"></script>
<script src="https://code.angularjs.org/1.8.0/angular-route.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body ng-app="myapp" ng-controller="myctrl">
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-90 p-b-30">
				<form name="frmDN" method="POST" action="/login" id="login-form"
					class="login100-form validate-form">
					<span class="login100-form-title p-b-40"> Login </span>

					<div>
						<a href="#" class="btn-login-with bg1 m-b-10"> <i
							class="fa fa-facebook-official"></i> Login with Facebook
						</a> <a href="#" class="btn-login-with bg2"> <i
							class="fa fa-google"></i> Login with Google
						</a>
					</div>

					<div class="text-center p-t-55 p-b-30">
						<span class="txt1"> Login with account </span>
					</div>

					<div class="wrap-input100 validate-input m-b-16">
						<input class="input100" type="text" name="your_name"
							id="your_name" placeholder="Your Name" value=""
							ng-model="your_name" required="required"> <span
							class="focus-input100"></span>
					</div>
					<div class="text-danger" style="margin-top: -1.2rem;"
						ng-hide="frmDN.your_name.$valid">Vui lòng nhập tên tài
						khoản!</div>

					<div class="wrap-input100 validate-input m-b-20"
						data-validate="Please enter password">
						<span class="btn-show-pass"> <i class="fa fa fa-eye"></i>
						</span> <input class="input100" type="password" name="your_pass"
							id="your_pass" placeholder="Password" value=""
							ng-model="your_pass" required="required"> <span
							class="focus-input100"></span>
					</div>
					<div class="text-danger" style="margin-top: -1.2rem;"
						ng-hide="frmDN.your_pass.$valid">Vui lòng nhập mật khẩu!</div>
					<div class="form-group">
						<input type="checkbox" name="remember" id="remember"
							class="agree-term" /> <label for="remember"
							class="label-agree-term"><span><span></span></span>Remember
							me</label>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" name="signin" id="signin" >Login</button>
						
					</div>
					<br>
					<div class="px-2 text-center text-white bg-danger rounded-pill">${message}${param.error}</div>
					<div class="flex-col-c p-t-224">
						<span class="txt2 p-b-10"> Don’t have an account? </span> <a
							href="/register" class="txt3 bo1 hov1"> Sign up now </a>
					</div>

				</form>
			</div>
		</div>
	</div>


	<!--===============================================================================================-->
	<script src="<c:url value=' /vendor/jquery/jquery-3.2.1.min.js'/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value=' /vendor/animsition/js/animsition.min.js'/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value=' /vendor/bootstrap/js/popper.js'/>"></script>
	<script src="<c:url value=' /vendor/bootstrap/js/bootstrap.min.js'/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value=' /vendor/select2/select2.min.js'/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value=' /vendor/daterangepicker/moment.min.js'/>"></script>
	<script
		src="<c:url value=' /vendor/daterangepicker/daterangepicker.js'/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value=' /vendor/countdowntime/countdowntime.js'/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value=' /js/main.js'/>"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>
</body>
</html>