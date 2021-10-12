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
<div class="row">
	<div class="col-12">
		<div class="row">
			<div class="col-5" style="border-bottom: 2px solid #dddddd; font-style: italic; font-weight: bold;">
				<h5>ItemCategoryManage</h5>
			</div>
		</div>
		<div style="height: 30px;"></div>
		<div class="row">
			<div class="col-10">
				<div style="font-size: 12px; color: red; margin-bottom: 3px;">*추가할 상품 카테고리명을 입력하세요.</div>
				<form action="/admin/insertCategory" method="post">
					<div class="row">
						<div class="col-8">
							<div class="input-group mb-3">
						  		<span class="input-group-text" id="basic-addon1">ITEM_NAME</span>
						  		<input type="text" name="cateName" class="form-control" placeholder="Input here..." aria-label="Username" aria-describedby="basic-addon1">
							</div>
						</div>
						<div class="col-4">
					    	<input type="submit" class="btn btn-primary" value=" 추 가 " >
						</div>
					</div>
				</form>
			</div>
		</div>
		<div style="height: 30px;"></div>
		<div class="row">
			<div class="col-12">
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th scope="col">No</th>
							<th scope="col">ITEM_CODE</th>
							<th scope="col">ITEM_NAME</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${categoryList }" var="categoryInfo" varStatus="status">
							<tr>
								<td scope="row">${categoryList.size() - status.index }</td>
								<td class="align-middle">${categoryInfo.cateCode }</td>
								<td class="align-middle">${categoryInfo.cateName }</td>
								<td>
									<form action="/admin/deleteCategory" method="post">
										<input type="hidden" name="cateCode" value="${categoryInfo.cateCode }">
										<input type="submit" class="btn btn-success btn-sm" value=" 삭 제 " >
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>










