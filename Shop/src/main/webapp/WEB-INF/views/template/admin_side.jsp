<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="list-group">
	<c:forEach items="${sideMenuList }" var="sideMenuInfo">
		<a href="/admin/${sideMenuInfo.menuPass }" class="list-group-item list-group-item-action <c:if test="${sidePage eq sideMenuInfo.menuPass }">active</c:if>" aria-current="true">${sideMenuInfo.sideMenuName }</a>
	</c:forEach>

  <%-- <a href="/admin/regItem" class="list-group-item list-group-item-action <c:if test="${sidePage eq 'regItem' }">active</c:if>">상품 등록</a>
  <a href="#" class="list-group-item list-group-item-action">상품 관리</a> --%>
</div>
</body>
</html>








