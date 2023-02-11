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
<style type="text/css">
	body{background-color: #DDDDDD}.product{background-color: #eee}.brand{font-size: 13px}.act-price{color:red;font-weight: 700}.dis-price{text-decoration: line-through}.about{font-size: 14px}.color{margin-bottom:10px}label.radio{cursor: pointer}label.radio input{position: absolute;top: 0;left: 0;visibility: hidden;pointer-events: none}label.radio span{padding: 2px 9px;border: 2px solid #ff0000;display: inline-block;color: #ff0000;border-radius: 3px;text-transform: uppercase}label.radio input:checked+span{border-color: #ff0000;background-color: #ff0000;color: #fff}.btn-danger{background-color: #ff0000 !important;border-color: #ff0000 !important}.btn-danger:hover{background-color: #da0606 !important;border-color: #da0606 !important}.btn-danger:focus{box-shadow: none}.cart i{margin-right: 10px}
</style>
<script type="text/javascript">


</script>
</head>
<body>
<%@include file="/views/common/header.jsp"%>
	<div class="container">
        <div class="row m-3">
            <div class="bwp-single-image col-lg-5 col-md-12 col-12 text-center">
                <div class="left-detail col-md-10 col-lg-12 m-auto">
                    <div class="img-size">
                    	<!-- ẢNH SẢN PHẨM -->
                        <img src="<c:url value='/images/product/${spchitiet.Anh}'/>" alt="">
                    </div>
                </div>
            </div>
            <div class="bwp-single-infor col-lg-7 col-md-12 col-12">
                <div class="right-detail">
                	<!-- TÊN SẢN PHẨM -->
                    <h1 itemprop="name" class="product_title entry-title">${spchitiet.TenSP}</h1>
                    <!-- GIÁ SẢN PHẨM -->
                    <div class="price-single">
                        <div class="price">
                        	<span class="woocommerce-Price-amount amount">
                        		<span class="woocommerce-Price-currencySymbol">$</span>
                        			${spchitiet.Gia}
                        	</span>
                        </div>
                    </div>
                    <!-- MÔ TẢ -->
                    <div class="fw-bold text-secondary">Mô tả</div>
                    <div itemprop="description" class="description col-10">
                    	<!-- Nếu sản phẩm có mô tả -->
                        <c:if test="${not empty spchitiet.MoTa}">
                        	<p>${spchitiet.mota}</p>
                        </c:if>
                        <!-- Nếu sản phẩm không có mô tả -->
                        <c:if test="${empty spchitiet.MoTa}">
                        	<p>Sản phẩm này hiện chưa có mô tả, chúng tôi sẽ cập nhật sau. Xin vui lòng chờ đợi!</p>
                        </c:if>
                    </div>
                    <div class="cart">
                        <div class="quantity-button">
                            <span>Quantity</span>
                            <div class="quantity">
                                <input type="number" id="quantity_6333fa0a4b0d4" class="input-text qty text" step="1"
                                    min="1" max="" name="quantity" value="1" title="Qty" size="4" placeholder=""
                                    inputmode="numeric" autocomplete="off">
                            </div>
                            <a type="submit" href="/giohang/them/${spchitiet.MaSP}" class="single_add_to_cart_button button alt text-decoration-none">Add to cart</a>
                        </div>
                        <div class="like-button">
                            <button><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-heart" viewBox="0 0 16 16">
                                    <path
                                        d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                </svg></button>
                        </div>
                    </div>
                    <div class="icon-cart">
                        <ul>
                            <li class="bg-primary"><a href="#"><i class="fa-brands fa-facebook"></i></i></a></li>
                            <li class="bg-info"><a href="#"><i class="fa-brands fa-twitter" aria-hidden="true"></i></a></li>
                            <li class="bg-warning"><a href="#"><i class="fa-brands fa-google-plus" aria-hidden="true"></i></a></li>
                            <li class="bg-danger"><a href="#"><i class="fa-brands fa-youtube" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
    
        </div>
    </div>
	
	<%@include file="/views/common/footer.jsp"%>

	
</body>
</html>