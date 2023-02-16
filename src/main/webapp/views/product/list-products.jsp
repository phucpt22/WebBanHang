<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file="/views/head/linkhead.jsp"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Index</title>
</head>

<body>
	<!-- HEADER BEGIN -->
	<%@include file="/views/header/header.jsp"%>
	<!-- HEADER END -->

	<br>
	<br>
	<div class="container-md container-sm container">
		<div class="col-md-10">
			<h2 class="exploreOurProducts title">Explore our Products</h2>
		</div>
		<div class="col-md-2"></div>
		<br>
		<div class="products">
			<div
				class="row row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 g-4">
				<c:forEach var="item" items="${dssanpham}">
					<div class="col">
						<div class="product-top" style="width: 17rem;">
							<div class="product-img">
								<a href="/sanpham/id_sp=${item.id_sp}"><img
									src="<c:url value='/images/product/${item.anh}'/>"
									class="w-100" /></a>
							</div>
							<div class="product-hover-action">
								<ul class="cart-action">
									<li class="wishlist"><a href="#"><i
											class="far fa-heart"></i></a></li>
									<li class="select-option"><a
										href="/giohang/them/${item.id_sp}">Add to Cart</a></li>
									<li class="quickview"><a href="#" data-bs-toggle="modal"
										data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
								</ul>
							</div>
							<div class="product-name">
								<a href="#" class="name">${item.tensp}</a>
							</div>
							<div class="product-price">
								<span class="current-price"> <fmt:formatNumber
										type="number" value="${item.gia}" /> VND
								</span> <span class="old-price"> <fmt:formatNumber type="number"
										value="${item.gia -500000}" /> VND
								</span>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 text-center mt--20 mt_sm--0">
				<a href="#" class="axil-btn btn-bg-lighter btn-load-more"
					style="border: 0.5px solid gray;">Load More</a>
			</div>
		</div>
		<br>
<%-- 		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item"><a class="page-link"
					href="/ds-sanpham?page">First</a></li>
				<li class="page-item"><a class="page-link"
					href="/ds-sanpham?page=${dssanpham.number -1 }">Previous</a></li>
				<li class="page-item"><a class="page-link"
					href="/ds-sanpham?page=${dssanpham.number +1 }">Next</a></li>
				<li class="page-item"><a class="page-link"
					href="/ds-sanpham?page=${dssanpham.totalPages -1 }">Last</a></li>
			</ul>
		</nav> --%>
	</div>


	<footer class="footer_widgets">
		<%@include file="/views/footer/footer.jsp"%>
	</footer>

	<%@include file="/views/foot/linkfoot.jsp"%>

</body>

</html>