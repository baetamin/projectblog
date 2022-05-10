<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/static/css/style.css" type="text/css">


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">


</head>
<body>

	<div id="wrap">
		<c:import url="/WEB-INF/jsp/common/header.jsp"/>
		<c:import url="/WEB-INF/jsp/common/nav.jsp"/>
		
			<div>
				<button type="button" class="btn btn-warning float-right mb-3" ><a href="/list/video/listpage">간단히 보기</a></button>
			</div>
			
			<div  class="d-flex justify-content-center">
				<div  class="d-flex align-items-center">
					<div>
						<img width="300" height="300" src="${videopost.imagePath }">
					</div>
					
					<div class="mt-3 ml-5">
						<input type="text" class="form-control" placeholder="닉네임 : ${videopost.userName }">
						<input type="text" class="form-control" placeholder="제목 : ${videopost.videoTitle }">
						<input type="text" class="form-control" placeholder="출연배우 : ${videopost.videoactor }">
						<input type="text" class="form-control" placeholder="방영일자: ${videopost.videoday }">
						<input type="text" class="form-control" placeholder="${videopost.content }">
					</div>
					
					<button class="btn btn-outline-warning ml-3"><h3><i class="bi bi-hand-thumbs-up "></h3></i></button>
				</div>
			</div>
					
			<div>
				<hr>
				<div class="d-flex">
					<input type="text" class="form-control mt-3 " placeholder="댓글쓰기">
					<button type="button" class="btn btn-warning ml-2"><i class="bi bi-pencil"></i></button>
				</div>
			</div>
		
		<c:import url="/WEB-INF/jsp/common/footer.jsp"/>	
	
	
	
	</div>




</body>
</html>