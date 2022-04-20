<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Write Review</title>

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
		
		<div class="d-flex contentcenter">
			<div >
				<div class="form-group">
				  <div class="box"></div>
				  <input type="file" class="form-control-file mt-3" id="exampleFormControlFile1">
				</div>
				
			</div>		
		
			
			<div>
				 
					 <div class="input-group mt-5 mb-3 form-group">
						<select class="custom-select" id="inputGroupSelect01">
						 	<option selected>카테고리 선택</option>
							<option value="button1">Best Book</option>
							<option value="button2">Best Video</option>
							<option value="button3">Best Store</option>
						  </select>
					 	</div>
				
						<div class="form-group button1div">
							<input type="text" id="BookTitleInput" class="form-control " placeholder="책 제목입력">
							<input type="text" id="authorInput" class="form-control mt-3" placeholder="작가 입력">
							<input type="text" id="PublisherInput" class="form-control mt-3" placeholder="출판사 입력">
						 </div>
						 
						 <div class="form-group button2div d-none">
							<input type="text" id="titleInput" class="form-control" placeholder="제목 입력">
							<input type="text" id="actorInput" class="form-control mt-3 " placeholder="출연 배우">
							<input type="text" id="dayInput" class="form-control mt-3" placeholder="방명 일자">
						 </div>
						
						<div>
						    <label for="exampleFormControlTextarea1"></label>
						    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
					  </div>
			</div>
		
		</div>	
		<c:import url="/WEB-INF/jsp/common/footer.jsp"/>	
	</div>	
		
	
	
	
	<script>
		$(document).ready(function(){
			
			$("#inputGroupSelect01").on("change",function(){
				
				var result = $('#inputGroupSelect01 option:selected').val();
				
				if(result == 'button2') {
					$('.button2div').removeClass('d-none');
					$('.button1div').addClass('d-none');
				}else{
					$('.button2div').hide();
				}
			});
			
			
		});
	
	
	
	
	</script>
	
		
		
		
</body>
</html>