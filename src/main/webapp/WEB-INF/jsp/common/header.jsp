<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
			<header >
				<div class="d-flex justify-content-between">
					
					<div class="text-align:center">
						<a href="/main/mainpage">
						<img src="/static/img/logo.png" width="150" >
						</a>
					</div>
					
					
					<div class="justify-content-end">
						
						<c:if test="${empty userNickname }">
						<div class="d-flex mt-5">
							<a href="/user/loginpage">로그인 |</a>
							<a href="/user/signuppage"> 회원가입</a>
						</div>
						</c:if>
						<c:if test="${not empty userNickname }">
							<div class="mt-5">${userNickname }<a href="/user/signout"> 님 로그아웃</a></div>
						</c:if>
					</div>
				</div>
			</header>