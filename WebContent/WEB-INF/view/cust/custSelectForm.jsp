<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/selectCSS.css" rel="stylesheet" />
</head>
<script>
	$(function(){
		//클릭한 메뉴만 보이게 하기
		$(".side2").hide();
		$("#custMgn").find(".side2").toggle();
		
		//버튼
		$("#bus").click(function(){
			$(location).attr('href','${pageContext.request.contextPath}/cust/addBusCust.do');
		})
		$("#nor").click(function(){
			$(location).attr('href','${pageContext.request.contextPath}/cust/addCust.do');
		})
		
		//이전으로 버튼
		$("#back").click(function(){
			$(location).attr('href','${pageContext.request.contextPath}/main/main.do');
		})
	})    
</script>
<body>
	<%@include file="../include/sectionBar.jsp"%>
	<div id="container">
		<div id="header">
			<h1>고객 추가</h1>
		</div>
			<div id="profile">
				<h2>프로필</h2>
				
				<h3>고객 분류를 선택해주세요.</h3>
				<div id="submit">
					<button id="bus">기업</button>
					<button id="nor">일반</button>
				</div>
				<div id="backTotheMain">
					<button id="back">이전으로</button>
				</div>
			</div>
	</div>
</body>
</html>