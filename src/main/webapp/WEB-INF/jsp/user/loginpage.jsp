<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>


	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/static/css/style.css" type="text/css">


</head>
<body>

	<div id="wrap">
			<c:import url="/WEB-INF/jsp/common/header.jsp"/>
			<c:import url="/WEB-INF/jsp/common/nav.jsp"/>
			
			<form id="loginForm">
				<div class="center">
						
						<input type="text" id="loginIdInput" class="form-control mt-5 " placeholder="아이디 입력">
						<input type="password" id="passwordInput" class="form-control mt-3 " placeholder="비밀번호 입력">
						<button type="submit" class="btn btn-warning btn-block mt-3 ">LOGIN</button>
					
				</div>
			</form>
			
				
			<c:import url="/WEB-INF/jsp/common/footer.jsp"/>
	</div>	

	<script>
		$(document).ready(function(){
			
			$("#loginForm").on("submit",function(e){
				
				e.preventDefault();
				
				let loginId = $("#loginIdInput").val();
				let password = $("#passwordInput").val();
				
				if(loginId == ""){
					alert("아이디를 입력하세요")
					return;
				}
				if(password == ""){
					alert("비밀번호를 입력하세요")
					return;
				}
				
				
				$.ajax({
					type:"post",			
					url:"/user/sign_in",
					data:{"loginId":loginId, "password":password},
					success:function(data){
						if(data.result == "success"){
							location.href = "/main/mainpage"
						}else{
							alert("아이디 비밀번호를 확인하세요");
						}
					}
					,error:function(e){
						alert("로그인 실패");
					}
				
				
				});
				
			});
			
		});
	
	</script>






</body>
</html>