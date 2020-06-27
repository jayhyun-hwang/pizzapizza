<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<%
	
%>
<link rel="stylesheet" href="../css/cart.css">
<script type="text/javascript" src="../js/cart.js"></script>
<style>
table {
	margin: 10% 0 10% 0;
	width : 100%;
	text-align: center;
	width: 100%;
}

td {
	padding: 2%;
}

.pizzacart {
	width: 500px;
}
.floating {
	background-color: #f55854;
	border: white;
	position: fixed;
	right: 5%;
	top: 40%;
	margin-right: 0;
	text-align: center;
	width: 200px;
	height: auto;
	border-radius: 8px;
	-webkit-border-radius: 8px;
	z-index: 100;
	color: #282828;
}
</style>
<section class="banner-area" id="home">
	<div class="container">
		<div class="row fullscreen align-items-center justify-content-between">

		</div>
	</div>
</section>
<div class="container">
	<section class="cartselection">

		<table>
			<tr>
				<td class="pizzacart"><h3>피자</h3></td>
				<td><h3>사이드</h3></td>
				<td><h3>가격</h3></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="pizzacart">라지&nbsp;기본&nbsp;바질<br>
					페페로니&nbsp;햄&nbsp;토마토&nbsp;옥수수<br>
					<hr> 패밀리&nbsp;치즈크러스트&nbsp;토마토<br>
					파인애플&nbsp;햄&nbsp;쉬림프&nbsp;옥수수<br>
				</td>
				<td>콜라 (1)<br> 버팔로윙 (1)<br> 스파게티 (1)<br> 트레비 (2)<br>
				</td>
				<td><h4>19,500</h4></td>
				<td><input type="button" value="삭제하기"></td>
			</tr>
		</table>
	</section>
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
	<img src="<%=request.getContextPath()%>/img/order/orderbt.jpg"
		alt="주문버튼"> <img
		src="<%=request.getContextPath()%>/img/order/cartbt.jpg" alt="주문버튼">
</div>
<%@include file="../inc/bottom.jsp"%>