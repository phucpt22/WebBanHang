<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/f757c7087e.js"></script>
<style type="text/css">

</style>
</head>
<body>
	<!-- begin information bar -->
	<%@include file="/views/common/header.jsp"%>
	<br>


	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="/views/img/banner1.png"
					alt="First slide">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="/views/img/banner2.png"
					alt="Second slide">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="/views/img/banner3.png"
					alt="Third slide">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<br>
	<%-- <div class="wrapper" style="margin-top: 40px;">
		<div class="container">
			<div class="row g-1">
				<c:forEach var="prod" items="${products}">

					<div class="col-md-3">
						<div class="card p-3" style="height: 392px;">
							<div class="text-center" style="height: 202px;">
								<img src="/views/img/${prod.image}" width="200">
							</div>
							<h3>${prod.name}</h3>
							<span class="font-weight-bold d-block">Quantity:
								${prod.quantity}</span> <span class="font-weight-bold d-block">Price:
								<fmt:formatNumber type="number" value="${prod.price}" />VNĐ
							</span> <a class="btn btn-danger cart-button btn-block"
								href="/cart/add/${prod.id}"> Add to cart </a>
								<a class="btn btn-dark cart-button btn-block"
								href="/detail/${prod.id}"> Detail </a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div> --%>
	
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			<div class="sidebar  shop-layout-boxed">
				<div class="container-fluid">
					<div class="main-archive-product row">
						<div
							class="bwp-sidebar sidebar-product col-xl-3 col-lg-3 col-md-12 col-12 px-4">
							<aside id="bwp_ajax_filte-6" class="widget bwp_ajax_filte">
								<div id="bwp_filter_ajax950953581664312889"
									class="bwp-woocommerce-filter-product">
									<div class="bwp-filter-ajax">
								<!-- LỌC GIÁ -->
										<form name="frmSearchPrice" action="/search/price" method = "post" id="bwp_form_filter_product">
											<div class="bwp-filter bwp-filter-category">
												<div id="pa_category" class="filter_category_product">
													<div data-id_category="431" class="item-category ">
														<label class="name">Giá dưới 10 triệu</label>
														<div class="count">
															<input ${price==1?"checked":""} type="radio" name="price" id="" value="1" onchange="document.frmSearchPrice.submit();" >
														</div>
													</div>
													<div data-id_category="151" class="item-category ">
														<label class="name">Giá từ 11 đến 12 triệu</label>
														<div class="count">
															<input ${price==2?"checked":""} type="radio" name="price" id="" value="2" onchange="document.frmSearchPrice.submit();" >
														</div>
													</div>
													<div data-id_category="401" class="item-category ">
														<label class="name">Giá từ 13 đến 14 triệu</label>
														<div class="count">
															<input ${price==3?"checked":""} type="radio" name="price" id=""value="3" onchange="document.frmSearchPrice.submit();" >
														</div>
													</div>
													<div data-id_category="381" class="item-category ">
														<label class="name">Giá từ 15 đến 16 triệu</label>
														<div class="count">
															<input ${price==4?"checked":""} type="radio" name="price" id="" value="4" onchange="document.frmSearchPrice.submit();" >
														</div>
													</div>
													<div data-id_category="407" class="item-category ">
														<label class="name">Giá trên 17 triệu</label>
														<div class="count">
															<input ${price==5?"checked":""} type="radio" name="price" id="" value="5" onchange="document.frmSearchPrice.submit();" >
														</div>
													</div>
												</div>
											</div>
										</form>
								<!-- END LỌC GIÁ-->
									</div>
								</div>
							</aside>

						</div>
						<div class="col-xl-9 col-lg-9 col-md-12 col-12">
							<div class="content-products-list">
								<ul class="products products-list row grid"
									data-col="col-lg-4 col-md-4 col-sm-6 col-6">

									<!-- DANH SÁCH SẢN PHẨM -->
									<c:forEach var="item" items="${dssanpham}">
										<li class="col-xl-4 col-lg-4 col-md-6 col-6">

											<div
												class="products-entry content-product1 clearfix product-wapper">
												<div class="products-thumb">
													<!-- ẢNH -->
													<div class="product-thumb-hover">
														<a href="/sanpham/id_sp=${item.MaSP}"
															class="woocommerce-LoopProduct-link"><img
															src="<c:url value='/views/img/${item.Anh}'/>"
															class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image"
															alt="" loading="lazy"></a>
													</div>
													<!-- CÁC NÚT -->
													<div class="product-button">
														<ul class="product-button-social">
															<!-- NÚT [GIỎ HÀNG] -->
															<li><a href="/cart/add${item.MaSP}"><svg
																		xmlns="http://www.w3.org/2000/svg" width="16"
																		height="16" fill="currentColor" class="bi bi-bag"
																		viewBox="0 0 16 16">
                                                                    <path
																			d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z" />
                                                                </svg></a></li>
															<!-- NÚT [YÊU THÍCH] -->
															<li><a href="#"><svg
																		xmlns="http://www.w3.org/2000/svg" width="16"
																		height="16" fill="currentColor" class="bi bi-heart"
																		viewBox="0 0 16 16">
                                                                    <path
																			d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                                                </svg></a></li>
															<!-- NÚT [TÌM] -->
															<li><a href="#"><svg
																		xmlns="http://www.w3.org/2000/svg" width="16"
																		height="16" fill="currentColor" class="bi bi-search"
																		viewBox="0 0 16 16">
                                                                    <path
																			d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                                                </svg></a></li>
														</ul>
													</div>
												</div>
												<div class="products-content">
													<div class="contents">
														<!-- TÊN SẢN PHẨM -->
														<h5 class="product-title">
															<a>${item.TenSP}</a>
														</h5>
														<!-- GIÁ SẢN PHẨM -->
														<span class="price"> <span
															class="woocommerce-Price-amount amount"><bdi>
																<span class="woocommerce-Price-currencySymbol"></span>${item.Gia}</bdi> VND
														</span> <!-- - 
                                                        <span class="woocommerce-Price-amount amount"><bdi>
                                                        	<span class="woocommerce-Price-currencySymbol">$</span>90.00</bdi>
                                                        </span> -->
														</span>
													</div>
												</div>
											</div>
										</li>

									</c:forEach>
									<!-- DANH SÁCH SẢN PHẨM -->

								</ul>
							</div>
							
							<!-- PHÂN TRANG -->
							<div class="bwp-top-bar bottom clearfix">
								<nav aria-label="">
									<ul class="pagination">
										<li class="page-item"><a class="page-link" href="#"
											tabindex="-1">Frist</a></li>
										<li class="page-item"><a class="page-link" href="#">Prev</a></li>
										<li class="page-item" aria-current="page"><a
											class="page-link" href="#">Next</a></li>
										<li class="page-item"><a class="page-link" href="#">Last</a></li>
										</li>
									</ul>
								</nav>
							</div>
							<!-- END -->
							
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
	
	
	<br>
	<%@include file="/views/common/footer.jsp"%>
	<!-- End of .container -->
</body>
</html>