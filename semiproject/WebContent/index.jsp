<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="inc/top.jsp"%>
<%-- <jsp:include page="/inc/top.jsp"/> --%>
<!-- start banner Area -->
<section class="banner-area" id="home">
	<div class="container">
		<div class="row fullscreen align-items-center justify-content-between">
			<div class="col-lg-12 banner-content">
				<h6 class="text-white">WIDE OPTIONS OF CHOICE</h6>
				<h1 class="text-white">Private Pizza</h1>
				<p class="text-white">inappropriate behavior is often laughed
					off as “boys will be boys,” women face higher conduct standards
					especially in the workplace. That’s why it’s crucial that, as
					women.</p>
				<a href="#" class="primary-btn text-uppercase">Make a Private PizzaBar</a>
			</div>
		</div>
	</div>
</section>
<!-- End banner Area -->
<!-- Start home-about Area -->
<section class="home-about-area section-gap" id="about">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-6 home-about-left">
				<h1>Private PizzaBar's Story</h1>
				<br>
				<h3>세상 단 하나뿐인 당신만의 Private 피자를 만들어보세요!</h3>
				<br>
				<h3>도우부터 치즈, 토핑까지 모두 당신의 선택입니다</h3>
				<br>
				<a href="#" class="primary-btn">View All Toping</a>
			</div>
			<div class="col-lg-6 home-about-right">
				<img class="img-fluid" src="img/about-img.jpg"/>
				<%-- <img class="img-fluid" src="<%=request.getContextPath() %>/img/about-img.jpg" alt=""> --%>
			</div>
		</div>
	</div>
</section>
<!-- End home-about Area -->
<!-- Start menu-area Area -->
            <section class="menu-area section-gap" id="order">
                <div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Private Pizza 주문하기</h1>
							</div>
						</div>
					</div>	
					<div id="delivery">
						<img class="img-fluid" src="<%=request.getContextPath() %>/img/del.png">
					</div>
					<div id="takeout">
						<img src="img/take.png">
					</div>
                    <ul class="filter-wrap filters col-lg-12 no-padding">
                        <li class="active">배달</li>
                        <li>포장</li>
                    </ul>
                </div>
            </section>
            <!-- End menu-area Area -->	
            
            	<section class="review-area section-gap">
				<div class="container">
					<div class="row">
						<div class="active-review-carusel">
							<div class="single-review">
								<img src="img/user.png" alt="">
								<h4>Hulda Sutton</h4>
								<div class="star">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>								
								</div>	
								<p>
									“Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.”
								</p>
							</div>
							<div class="single-review">
								<img src="img/user.png" alt="">
								<h4>Hulda Sutton</h4>
								<div class="star">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>								
								</div>	
								<p>
									“Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.”
								</p>
							</div>	
							<div class="single-review">
								<img src="img/user.png" alt="">
								<h4>Hulda Sutton</h4>
								<div class="star">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>								
								</div>	
								<p>
									“Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.”
								</p>
							</div>
							<div class="single-review">
								<img src="img/user.png" alt="">
								<h4>Hulda Sutton</h4>
								<div class="star">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>								
								</div>	
								<p>
									“Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.”
								</p>
							</div>														
						</div>
					</div>
				</div>	
			</section>
			<!-- End review Area -->	
<%@include file="inc/bottom.jsp"%>