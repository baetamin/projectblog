<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book List</title>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/static/css/style.css" type="text/css">


	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">


</head>
<body>


	<div id="wrap">
		<c:import url="/WEB-INF/jsp/common/header.jsp"/>
		<c:import url="/WEB-INF/jsp/common/nav.jsp"/>
		
			
			<div class="mt-5 ">
				<table class="table ">
				  <thead class="thead">
				    <tr>
				      <th scope="col">No.</th>
				      <th scope="col">title</th>
				      <th scope="col">nickname</th>
				      <th scope="col">review</th>
				      <th scope="col">like</th>
				       <th scope="col"></th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach var="video" items="${videolist }" varStatus="status">
					    <tr>
					      <th scope="row">${status.count}</th>
					      <td><a href="/list/video/detailpage?id=${video.id}">${video.videoTitle }</a></td>
					      <td>${video.userName }</td>
					      <td>${video.content }</td>
					      <td>3239302</td>
					      	<c:if test="${video.userid == userId}">
					       <td><button type="button" class="deleteBtn btn btn-danger btn-sm" data-video-id="${video.id}">??????</button></td>
					   		</c:if>
					    </tr>
				    </c:forEach>
				   </tbody>
			</div>
	
		<c:import url="/WEB-INF/jsp/common/footer.jsp"/>	
	</div>

	<script>
		$(document).ready(function(){
			
			$(".deleteBtn").on("click",function(){
				var deleteId = $(this).data("video-id");
				
				$.ajax({
					type:"GET",
					url:"/list/delete/videolist",
					data:{"id" : deleteId},
					success:function(data){
						if(data.result == "success"){
							alert("?????? ??????");
							location.reload();
						}else{
							alert("?????? ??????");
							
						}
						
					}, error:function(e) {
						alert("?????? ??????");
					}
					
				});
				
			});
			
			
		});
	
	</script>



</body>



</html>