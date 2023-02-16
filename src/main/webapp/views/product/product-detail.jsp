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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
	integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
	integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
	crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
	integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
	crossorigin="anonymous"></script>
<title>Index</title>
</head>

<body>
	<!-- HEADER BEGIN -->
	<%@include file="/views/header/header.jsp"%>
	<!-- HEADER END -->





	<div class="container-fluid mt-2 mb-3">
		<div class="row no-gutters">
			<div class="col-md-6 pr-2">
				<div class="card">
					<div class="bwp-single-image text-center">
						<div class="left-detail col-md-10 col-lg-12 m-auto">
							<div class="img-size">
								<!-- ẢNH SẢN PHẨM -->
								<img src="<c:url value='/images/product/${spchitiet.anh}'/>"
									alt="">
							</div>
						</div>
					</div>
				</div>

			</div>

			<div class="col-md-6">
				<div class="card" style="padding: 20px">
					
					<h1 itemprop="name" class="product_title entry-title">${spchitiet.tensp}</h1>
					<!-- GIÁ SẢN PHẨM -->
					<div class="price-single">
						<div class="price">
							<span class="woocommerce-Price-amount amount"> <span
								class="woocommerce-Price-currencySymbol"></span> <fmt:formatNumber
									type="number" value="${spchitiet.gia}" /> VND
							</span>
						</div>
					
						<div class="quantity-button">
							<span>Quantity</span>
							<div class="quantity">
								<input type="number" id="quantity_6333fa0a4b0d4"
									class="input-text qty text" step="1" min="1" max=""
									name="quantity" value="1" title="Qty" size="4" placeholder=""
									inputmode="numeric" autocomplete="off">
							</div>
							<a type="submit" href="/giohang/them/${spchitiet.id_sp}"
								class="btn btn-danger">Add
								to cart</a>
						</div>

					</div>
					<hr>
					<div class="product-description">

						<div class="d-flex flex-row align-items-center"></div>
						<div class="mt-2">
							<span class="fw-bold">Description</span>
							<p>${spchitiet.tensp} có khối lượng máy chỉ 1.4 kg, độ dày
								20.99 mm, thiết kế thanh lịch, đẹp mắt với lớp vỏ nhựa màu đen
								đơn giản kèm logo hãng tinh tế ở góc trái trên mặt lưng, dễ dàng
								cùng bạn xuất hiện ở mọi nơi.</p>
							
						</div>
						<div class="fw-bold text-secondary">Mô tả</div>
						<div itemprop="description" class="description col-10" style="height: 50px">
							<!-- Nếu sản phẩm có mô tả -->
							<c:if test="${not empty spchitiet.mota}">
								<p>${spchitiet.mota}</p>
							</c:if>
							<!-- Nếu sản phẩm không có mô tả -->
							<c:if test="${empty spchitiet.mota}">
								<p>Sản phẩm này hiện chưa có mô tả, chúng tôi sẽ cập nhật
									sau. Xin vui lòng chờ đợi!</p>
							</c:if>
						</div>
					</div>
				</div>
				<div class="card mt-2">
					<span>Similar items:</span>
					<div class="similar-products mt-2 d-flex flex-row">
						<div class="card
                border p-1"
							style="width: 9rem; margin-right: 3px; height: 150px">
							<img
								src="https://icones.pro/wp-content/uploads/2022/03/icone-d-ordinateur-portable-rouge.png"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h6 class="card-title">$1,999</h6>
							</div>
						</div>
						<div class="card border p-1"
							style="width: 9rem; margin-right: 3px; height: 150px">
							<img src="https://cdn-icons-png.flaticon.com/512/59/59505.png"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h6 class="card-title">$1,699</h6>
							</div>
						</div>
						<div class="card border p-1"
							style="width: 9rem; margin-right: 3px; height: 150px">
							<img
								src="https://icones.pro/wp-content/uploads/2022/03/icone-d-ordinateur-portable-rouge.png"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h6 class="card-title">$2,999</h6>
							</div>
						</div>
						<div class="card border p-1"
							style="width: 9rem; margin-right: 3px; height: 150px">
							<img src="https://cdn-icons-png.flaticon.com/512/59/59505.png"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h6 class="card-title">$3,999</h6>
							</div>
						</div>
						<div class="card border p-1"
							style="width: 9rem; margin-right: 3px; height: 150px">
							<img
								src="https://icones.pro/wp-content/uploads/2022/03/icone-d-ordinateur-portable-rouge.png"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h6 class="card-title">$2,999</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script>
	<script
		src='https://sachinchoolur.github.io/lightslider/dist/js/lightslider.js'></script>
	<script>
		$('#lightSlider').lightSlider({
			gallery : true,
			item : 1,
			loop : true,
			slideMargin : 0,
			thumbItem : 9
		});
	</script>






	<footer class="footer_widgets">
		<%@include file="/views/footer/footer.jsp"%>
	</footer>

	<%@include file="/views/foot/linkfoot.jsp"%>

</body>

</html>