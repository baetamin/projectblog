<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>


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
			
				<div class="center" >
					
						<div class="d-flex">
							<input type="text" id="idInput" class="form-control mt-5" placeholder="아이디 입력">
							<button type="button" id="isDuplicateBtn" class="button btn btn-block btn-outline-warning ml-2 mt-5 col-3 btn-sm">중복확인</button>
							
						</div>
						<div id="duplicateText" class="d-none"><small class="text-danger">중복된 ID 입니다</small></div>
						<div id="possibleText" class="d-none"><small class="text-success">사용가능한 ID 입니다</small></div>
						
						<input type="password"id="passwordInput"  class="form-control mt-3" placeholder="비밀번호 입력">
						<input type="password" id="passwordConfirmInput" class="form-control mt-3" placeholder="비밀번호 확인">
						
						<input type="text" id="nicknameInput" class="form-control mt-3 " placeholder="닉네임">
						<input type="text" id="emailInput" class="form-control mt-3 " placeholder="이메일주소">
						<button type="button" id="signUpBtn" class="btn btn-warning btn-block mt-4">회원가입</button>
					
				</div>
				
				
				
			<c:import url="/WEB-INF/jsp/common/footer.jsp"/>
	</div>	


	<script>
		$(document).ready(function(){
			var isDuplicate = true;
			var isChecked = false;
			
			$("#idInput").on("input",function(){
				
				isChecked = false;
				isDupuplicate = true;
				
				$("#duplicateText").addClass("d-none");
				$("#possibleText").addClass("d-none");
				
			});
			
			
			$("#signUpBtn").on("click",function(){
				let loginId = $("#idInput").val();
				let password = $("#passwordInput").val();
				let passwordConfirm = $("passwordConfirmInput").val();
				let nickname = $("#nicknameInput").val();
				let email = $("#emailInput").val();
				
				if(loginId == ""){
					alert("아이디를 입력하세요");
					return;
				}
				if(isChecked == false){
					alert("중복확인 하세요 ");
					return;
				}
				if(isDuplicate == true){
					alert("중복된 아이디입니다")
					return;
				}
				
				if(password == "" ){
					alert("비밀번호를 입력하세요");
					return;
				}
				if(password != passwordConfirm){
					alert("비밀번호를 재 확인 하세요");
					return;
				}
				if(nickname == ""){
					alert("닉네임을 입력하세요");
					return;
				}
				if(email == ""){
					alert("이메일을 입력하세요");
					return;
				}
			
				
			
				$.ajax({
					type:"post",
					url:"/user/sign_up",
					data:{"loginId":loginId, "password":password, "nickname":nickname, "email":email},
					
					success:function(data){
						if(data.result == "success"){
							alert("회원가입 성공")
						}else{
							alert("회원가입 실패");
						}
						
					},
					error:function(){
						alert("회원가입 에러");
					}
				});
				
			});
			
			$("#isDuplicateBtn").on("click",function(){
				var loginId = $("#idInput").val();		
				
				if(loginId == ""){
					alert("아이디를 입력하세요");
					return;
				}
				
				$.ajax({
					type:"get",
					url:"/user/duplicate_id",
					data:{"loginId":loginId},
					
					success:function(data){
						isChecked = true;
						
						$("#duplicateText").addClass("d-none");
						$("#possibleText").addClass("d-none");
						
						
						if(data.is_duplicate){
							$("#duplicateText").removeClass("d-none");

						}else{
							$("#possibleText").removeClass("d-none");
						}
						
						isDuplicate = data.is_duplicate;
						
					},
					error:function(){
						alert("중복확인 에러")
					}
					
				});
			});
			
				
			
			
			
				
			
		});
	
	
	</script>
	

</body>
</html>