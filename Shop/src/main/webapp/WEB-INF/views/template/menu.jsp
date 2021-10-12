<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/template/js/menu.js?ver=4"></script>
<style type="text/css">
span:hover {
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="row">
		<div class="col text-end">
			<c:choose>
				<c:when test="${not empty sessionScope.loginInfo }">
					${sessionScope.loginInfo.name }님 반가워요~!
					<a href="/member/logout">Logout</a>
				</c:when>
				<c:otherwise>
					<a href="/member/join">Join</a> 
					<span data-bs-toggle="modal" data-bs-target="#loginModal">Login</span>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div class="row">
		<div class="col text-center">
			<h1>BOOK SHOP</h1>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Shop</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
					aria-controls="navbarNavAltMarkup" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
					<div class="navbar-nav">
						<c:choose>
							<c:when test="${empty sessionScope.loginInfo or sessionScope.loginInfo.isAdmin eq 'N' }">
								<a class="nav-link active" aria-current="page" href="#">Home</a> 
								<c:forEach items="${categoryList }" var="categoryInfo">
									<a class="nav-link active" href="#">${categoryInfo.cateName }</a> 
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach items="${menuList }" var="menuInfo">
								<!-- 	<a class="nav-link active" href="/admin/categoryManage">상품관리</a>
									<a class="nav-link active" href="/admin/regItem">상품등록</a> -->
									
									<a class="nav-link active" href="/admin/${menuInfo.menuPass }">${menuInfo.menuName }</a>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</nav>
		</div>
	</div>
	
	
	<!-- Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog">
    		<div class="modal-content">
      			<div class="modal-header">
		        	<h5 class="modal-title" id="exampleModalLabel">LOGIN</h5>
		        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      			</div>
      		
	      		<div class="modal-body">
	      			<form action="/member/login" method="post">
				        <div class="form-floating mb-3">
				        	<input type="text" name="id" class="form-control" id="floatingInput" placeholder="name@example.com" required>
						  	<label for="floatingInput">Input your Id</label>
						</div>
						<div class="form-floating">
				  			<input type="password" name="pw" class="form-control" id="floatingPassword" placeholder="Password" required>
				  			<label for="floatingPassword">Input your Password</label>
						</div>
						<div class="col-12 d-grid mt-2">
				    		<input type="submit" class="btn btn-primary" value="L O G I N">
				  		</div>
			  		</form>
	      		</div>
	     		<!--  <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">Save changes</button>
	      		</div> -->
    		</div>
    	</div>
	</div>
	
</body>
</html>











