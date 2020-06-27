<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<%
	
%>
<link rel="stylesheet" href="../css/order.css">
<script type="text/javascript" src="../js/order.js"></script>

<section class="banner-area" id="home">
	<div class="container">
		<div class="row fullscreen align-items-center justify-content-between">

		</div>
	</div>
</section>
<h2 style="text-align: center">Select yours</h2>

<div class="container">
	<div class="mySlides">
		<div class="numbertext">1 / 4</div>
		<div>
			<section class="toppingselect">
				<table>
					<tr>
						<td><h3>사이즈</h3></td>
						<td><h4>하나를 선택해주세요</h4></td>
					</tr>
					<!--사이즈 선택 반복문  -->
					<%
						String[] sizeArr={"regular","large","family"};
						String[] sizeNameArr={"Regular","Large","Family"};
						String[] sizeImgArr={"","",""};
						for(int i=0;i<sizeArr.length;i++){
					%>
					<tr>
						<td><img alt="<%=sizeArr[i] %>" src="<%=request.getContextPath() %>/img/order/d1.jpg"></td>
						<td><input type="radio" name="size" value="<%=sizeArr[i] %>"></td>
					</tr>
					<tr>
						<td><h5><%=sizeNameArr[i] %></h5></td>
						<td></td>
					</tr>
					<%} %>
					<tr>
						<td><br></td>
						<td></td>
					</tr>
					<tr>
						<td><h3>도우</h3></td>
						<td><h4>하나를 선택해주세요</h4></td>
					</tr>
					<!--도우 선택 반복문  -->
					<%
						String[] doughArr={"original","napoli","thin"};
						String[] doughNameArr={"기본 도우","나폴리 도우","씬 도우"};
						String[] doughImgArr={"","",""};
						for(int i=0;i<doughArr.length;i++){
					%>
					<tr>
						<td><img alt="<%=doughArr[i] %>" src="<%=request.getContextPath() %>/img/order/d1.jpg"></td>
						<td><input type="radio" name="dough" value="<%=doughArr[i] %>"></td>
					</tr>
					<tr>
						<td><h5><%=doughNameArr[i] %></h5></td>
						<td></td>
					</tr>
					<%} %>
					<tr>
						<td><h3><br></h3></td>
						<td><h4></h4></td>
					</tr>
					<tr>
						<td><h3>크러스트</h3></td>
						<td><h4>하나를 선택해주세요</h4></td>
					</tr>
					<!--크러스트 선택 반복문  -->
					<%
						String[] crustArr={"normal","cheese","bite","gold"};
						String[] crustNameArr={"기본","치즈 크러스트","치즈 바이트","골드 크런치"};
						String[] crustImgArr={"","",""};
						for(int i=0;i<crustArr.length;i++){
					%>
					<tr>
						<td><img alt="<%=crustArr[i] %>" src="<%=request.getContextPath() %>/img/order/d1.jpg"></td>
						<td><input type="radio" name="crust" value="<%=crustArr[i] %>"></td>
					</tr>
					<tr>
						<td><h5><%=crustNameArr[i] %></h5></td>
						<td></td>
					</tr>
					<%} %>
				</table>
			</section>
		</div>
	</div>

	<div class="mySlides">
		<div class="numbertext">2 / 4</div>
			<div>
			<section class="toppingselect">
				<table>
					<tr>
						<td><h3>소스</h3></td>
						<td><h4>선택</h4></td>
					</tr>
					<!--소스 선택 반복문  -->
					<%
						String[] sauceArr={"tomato","basil","honey", "white"};
						String[] sauceNameArr={"토마토","바질","허니(꿀)","까르보나라"};
						String[] sauceImgArr={"","",""};
						for(int i=0;i<sauceArr.length;i++){
					%>
					<tr>
						<td><img alt="<%=sauceArr[i] %>" src="<%=request.getContextPath() %>/img/order/d1.jpg"></td>
						<td><input type="radio" name="sauce" value="<%=sauceArr[i] %>"></td>
					</tr>
					<tr>
						<td><h5><%=sauceNameArr[i] %></h5></td>
						<td></td>
					</tr>
					<%} %>
				</table>
			</section>
		</div>
	</div>

	<div class="mySlides">
		<div class="numbertext">3 / 4</div>
		<div>
			<section class="toppingselect">
				<table>
					<tr>
						<td><h3>토핑</h3></td>
						<td><h4>선택</h4></td>
						<td></td>
					</tr>
					<!--토핑 선택 반복문  -->
					<%
						String[] toppArr={"mushroom","ham","cheese","shrimp","olive","paprika",
								"onion","pepperoni","bulgogi","potato","sweetpotato","bacon"};
						String[] toppNameArr={"버섯","햄","치즈","새우","올리브","파프리카","양파","페페로니",
								"불고기","감자","고구마","베이컨"};
						String[] toppImgArr={"","",""};
						for(int i=0;i<toppArr.length;i++){
					%>
					<tr>
						<td><img alt="<%=toppArr[i] %>" src="<%=request.getContextPath() %>/img/order/d1.jpg"></td>
						<td><input type="checkbox" name="topping" value="<%=toppArr[i]%>" ></td>
						<td><select name="<%=toppArr[i] %>" style="visibility:hidden">
								<option value="1">조금</option>
								<option value="2">보통</option>
								<option value="3">많이</option>
								<option value="4">아주 많이</option>
						   	</select> 
						</td>
					</tr>
					<tr>
						<td><h5><%=toppNameArr[i] %></h5></td>
						<td></td>
						<td></td>
					</tr>
					<%} %>			
				</table>
			</section>
		</div>
	</div>

	<div class="mySlides">
		<div class="numbertext">4 / 4</div>
		<div>
			<section class="toppingselect">
				<table>
					<tr>
						<td><h3>토핑</h3></td>
						<td><h4>선택</h4></td>
						<td></td>
					</tr>
					<!--사이드 선택 반복문  -->
					<%
						String[] sideArr={"cola","fanta","trevi", "chickenwing", "potatofries","spaghetti"};
						String[] sideNameArr={"콜라","환타","탄산수", "버팔로윙", "감자 튀김","스파게티"};
						String[] sideImgArr={"","",""};
						
						for(int i=0;i<sideArr.length;i++){
					%>
					<tr>
						<td><img alt="<%=sideArr[i] %>" src="<%=request.getContextPath() %>/img/order/d1.jpg"></td>
						<td><input type="checkbox" name="side" value="<%=sideArr[i]%>"></td>
						<td><select name="<%=sideArr[i] %>" style="visibility:hidden">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">직접입력</option>
						   	</select> 
						</td>
					</tr>
					<tr>
						<td><h5><%=sideNameArr[i] %></h5></td>
						<td></td>
						<td></td>
					</tr>
					<%} %>			
				</table>
			</section>
		</div>
	</div>


	<div class="caption-container">
		<p id="caption"></p>
	</div>

	<div class="row">
	<div class="selcate">
		<div class="column">
			<img class="demo cursor" src="<%=request.getContextPath() %>/img/order/doughback.jpg"
				style="width: 100%" onclick="currentSlide(1)" alt="도우 & 크러스트">
		</div>
		<div class="column">
			<img class="demo cursor" src="<%=request.getContextPath() %>/img/order/sauceback.jpg"
				style="width: 100%" onclick="currentSlide(2)" alt="소스">
		</div>
		<div class="column">
			<img class="demo cursor" src="<%=request.getContextPath() %>/img/order/toppingback.jpg"
				style="width: 100%" onclick="currentSlide(3)" alt="토핑">
		</div>
		<div class="column">
			<img class="demo cursor" src="<%=request.getContextPath() %>/img/order/sideback.jpg"
				style="width: 100%" onclick="currentSlide(4)" alt="사이드">
		</div>
	</div>
	</div>
</div>
<div class="floating"> 
<!--주문 리모컨  -->
<div>
	<table id="remoteTable">
		<tr id="remoteTable">
			<td>종류</td>
			<td>선택</td>
		</tr>
		<tr>
			<td>사이즈</td>
			<td></td>
		</tr>
		<tr>
			<td>도우</td>
			<td></td>
		</tr>
		<tr>
			<td>소스</td>
			<td></td>
		</tr>
	</table>
</div>
<img src="<%=request.getContextPath() %>/img/order/orderbt.jpg" alt="주문버튼">	
<img src="<%=request.getContextPath() %>/img/order/cartbt.jpg" alt="주문버튼">	
</div>
<script type="text/javascript">
	var slideIndex = 1;
	showSlides(slideIndex);

	function plusSlides(n) {
		showSlides(slideIndex += n);
	}

	function currentSlide(n) {
		showSlides(slideIndex = n);
	}

	function showSlides(n) {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("demo");
		var captionText = document.getElementById("caption");
		if (n > slides.length) {
			slideIndex = 1
		}
		if (n < 1) {
			slideIndex = slides.length
		}
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex - 1].style.display = "block";
		dots[slideIndex - 1].className += " active";
		captionText.innerHTML = dots[slideIndex - 1].alt;
	}
</script>

<%@include file="../inc/bottom.jsp"%>