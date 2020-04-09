<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>    
</head>
<style>
	* { margin:0; padding:0; 
		font-family: 'Noto Sans KR', sans-serif;
		color: #252525; }
	div#dummy { height: 75px; background: #292929;}			
	#container { width: 1000px; margin: 30px auto;}
	
	/* 헤더 (입금 부분) */
	div#header { background: goldenrod;
			     height: 150px; }
	div#header h1 { padding: 30px;  }
	div#profile { background: whitesmoke;
				  height: 600px;
				  border-radius: 10px;
				  padding: 50px;}
				  
	div#profile h2 { height: 50px;}

				  
	/* 고객 정보 부분 */
	div#profileEdit { width:600px; 
					  height: 450px; 
					  overflow: hidden;
					  margin-left: 200px;  }
	div#profileEdit table { width: 500px;}
	div#profileEdit table tr { height: 30px; }
	div#profileEdit table th { width: 100px; height: 50px; text-align: left; }
	div#profileEdit table td { width: 200px; text-align: center;
							   padding-left: 70px; }
	div#profileEdit table td input { width: 250px;
									 background: whitesmoke;
								     border: none; 
								     margin: 10px 10px 10px 60px; 
								     border-bottom: 1px solid gray;
								     color: dimgray;}
	
	/* 버튼 */							     
	div#submit {  width: 500px;  
				 height: 80px; 
				 margin-left: 300px;
				 margin-top:30px; 
				  }
	div#submit input { width: 100px;  height: 40px;   
					   border: none;  
					   background: gray; 
					   margin-left:20px; 
					   font-size: 15px;
					   color: whitesmoke;}		
    /* 계좌번호 조회를 위한 버튼 */					   
    #btnSearch{
       
    }
    
    /* 에러 메세지 */
  .errorMSG {
	color: tomato;
	display: none;
	font-size: 12px;
}
					   				    
</style>
<script>
	$(function(){
		//클릭한 메뉴만 보이게 하기
		$("#transfer").show();
		
		
		//있는 계좌번호인지 판단 
		$("#findAccNum").on("change",function(){
			$(".errorMSG").css("display", "none");
			var targetAccNum = $("#findAccNum").val();
			//alert(targetAccNum);
			
			$.ajax({
				url: "${pageContext.request.contextPath}/cust/custTtoSame.do",
			    type: "post", 
			    data: {"targetAccNum":targetAccNum},
			    dataType: "json",
			    success : function(res){
			         console.log(res)
			    	if(res.successs =="existAccount"){
			    		
			    		$("input[name='findAccNum']").next().next().html(res.targetCustName);
			    		$("input[name='findAccNum']").next().next().next().css("display", "inline");
			    		
			    	}if(res.error =="notExist"){
			    		$("input[name='findAccNum']").next().css("display", "inline");
			    	}
			    	
			    }
			})
			
		})
		
		
		
		
		
		//취소 클릭 시
		$("#cancel").click(function() {
			var choose = confirm("취소하시겠습니까? 리스트로 돌아갑니다.");
			if(choose){
				location.href = "${pageContext.request.contextPath}/cust/custDWSearch.do";	
			}
    	})
    	
    	//입금 클릭 시
    	$("input[value='입금']").click(function(){
    		
    		var deposit = confirm("입금하시겠습니까?");
    		if(deposit){

        		var accountNum = $("input[name='accNum']").val();
        		var amount=$("input[name='amount']").val();
        		var code = $("input[name='code']").val();
        		
        		location.href= "${pageContext.request.contextPath}/cust/custDWFunction.do?accountNum="+accountNum+"&amount="+amount+"&text=입금&code="+code;
    		}
    		
    	})  
    	
    	//출금 클릭 시
    	$("input[value='출금']").click(function(){
    		
    		var deposit = confirm("출금하시겠습니까?");
    		if(deposit){

        		var accountNum = $("input[name='accNum']").val();
        		var amount=$("input[name='amount']").val();
        		var code = $("input[name='code']").val();
        		  
        		location.href= "${pageContext.request.contextPath}/cust/custDWFunction.do?accountNum="+accountNum+"&amount="+amount+"&text=출금&code="+code;
    		}
    		
    	})
    	
	})
</script>
<body>	
	<%@include file="../include/sectionBar.jsp"%>
	<div id="container">
		<div id="header">
			<c:if test="${dw=='즉시이체' }">
				<h1>즉시이체</h1>
			</c:if>
			<c:if test="${dw=='타행송금' }">   
				<h1>타행송금</h1>
			</c:if>
		</div>	
			<div id="profile">
				<h2>송금정보</h2>
						
						<div id="profileEdit">
							<table>
								
						<tr>
							<th>고객 코드</th>
							<td>
								<input type="text" name="code" value="${custBal.custCode }" readonly="readonly">
							</td>
						</tr>
						<tr>
							<th>고객명</th>
							<td><input type="text" name="name" value="${custBal.custName }" readonly="readonly"></td>
						</tr>
						<tr>
							<th>출금 계좌번호</th>
							<td>
								<input type="text" name="accNum" value="${accountNum }" readonly="readonly">
							</td>
						</tr>   
						<tr>           
							<th>잔액</th>
							<td>
								<input type="text" name="accBal" value="${custBal.bankbook.accountBalance }" readonly="readonly">
								
							</td>   
						</tr>
						<tr>
							<th>송금 계좌번호</th>
							<td>
								<input type="input" name="findAccNum" id="findAccNum" value="293133-">
								<span class="errorMSG">없는 계좌번호 입니다. 확인해주세요</span>
								<span></span><span class="errorMSG">님의 계좌번호가 맞다면 진행하세요</span>
							</td>
						</tr>
						<tr>
							<c:if test="${dw=='입금' }">
							<th>입금 금액</th>
							<td><input type="text" name="amount"></td>
							</c:if>
							<c:if test="${dw=='출금' }">
							<th>출금 금액</th>
							<td><input type="text" name="amount"></td>
							</c:if>    
						</tr>
						
					</table>
				</div>
				
				<div id="submit">
					<c:if test="${dw=='즉시이체' }">
						<input type="submit" value="이체">
					</c:if>
					<c:if test="${dw=='타행송금' }">
						<input type="submit" value="이체">
					</c:if>
					<input type="reset" value="취소" id="cancel">
				</div>
				
			</div>
	</div>
</body>
</html>