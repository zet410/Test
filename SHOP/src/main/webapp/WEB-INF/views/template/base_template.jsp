<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title"/></title>
<!-- 태그 초기화 작업 -->
<link rel="stylesheet" href="/resources/common/reset.css">
<!-- 제이쿼리 문법을 로딩 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- 부트스트랩 사용을 위해 css와 js를 로딩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<style type="text/css">
.container-fluid{
	width: 90%;
	margin-top: 20px;
}
body {
  line-height: 1;
  font-family: '양진체';
  font-size: 20px;
}

</style>
</head>
<body>
<div class="container-fluid"> <!-- container-fluid 안에 담는 걸 사용 권장 -->
	<div class="row"> <!-- 한줄 -->
		<div class="col"><tiles:insertAttribute name="menu"/></div><!-- 열이 하나 -->
	</div>
	<div class="row">
		<div class="col"><tiles:insertAttribute name="body"/></div>
	</div>
</div>

</body>
</html>