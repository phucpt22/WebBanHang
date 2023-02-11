<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@media ( max-width : 767px) {
	.carousel-inner .carousel-item>div {
		display: none;
	}
	.carousel-inner .carousel-item>div:first-child {
		display: block;
	}
}

.carousel-inner .carousel-item.active, .carousel-inner .carousel-item-next,
	.carousel-inner .carousel-item-prev {
	display: flex;
}

/* medium and up screens */
@media ( min-width : 768px) {
	.carousel-inner .carousel-item-end.active, .carousel-inner .carousel-item-next
		{
		transform: translateX(25%);
	}
	.carousel-inner .carousel-item-start.active, .carousel-inner .carousel-item-prev
		{
		transform: translateX(-25%);
	}
}

.carousel-inner .carousel-item-end, .carousel-inner .carousel-item-start
	{
	transform: translateX(0);
}
</style>
</head>
<body>
	<div class="row mx-auto my-auto justify-content-center">
		<div id="recipeCarousel" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<div class="col-md-3">
						<div class="card">
							<div class="card-img">
								<img src="https://via.placeholder.com/500x400/31f?text=1"
									class="img-fluid">
							</div>
							<div class="card-img-overlay">Slide 1</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="col-md-3">
						<div class="card">
							<div class="card-img">
								<img src="https://via.placeholder.com/500x400/e66?text=2"
									class="img-fluid">
							</div>
							<div class="card-img-overlay">Slide 2</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="col-md-3">
						<div class="card">
							<div class="card-img">
								<img src="https://via.placeholder.com/500x400/7d2?text=3"
									class="img-fluid">
							</div>
							<div class="card-img-overlay">Slide 3</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="col-md-3">
						<div class="card">
							<div class="card-img">
								<img src="https://via.placeholder.com/500x400?text=4"
									class="img-fluid">
							</div>
							<div class="card-img-overlay">Slide 4</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="col-md-3">
						<div class="card">
							<div class="card-img">
								<img src="https://via.placeholder.com/500x400/aba?text=5"
									class="img-fluid">
							</div>
							<div class="card-img-overlay">Slide 5</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="col-md-3">
						<div class="card">
							<div class="card-img">
								<img src="https://via.placeholder.com/500x400/fc0?text=6"
									class="img-fluid">
							</div>
							<div class="card-img-overlay">Slide 6</div>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev bg-transparent w-aut"
				href="#recipeCarousel" role="button" data-bs-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span>
			</a> <a class="carousel-control-next bg-transparent w-aut"
				href="#recipeCarousel" role="button" data-bs-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span>
			</a>
		</div>
	</div>
	<script src="/style/user/bannerCategory.js">
      

      </script>
</body>
</html>