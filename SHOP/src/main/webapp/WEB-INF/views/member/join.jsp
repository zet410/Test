<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form class="row g-3">
  <div class="col-12"><!-- 아이디 -->
    <label for="id" class="form-label">ID</label> <!-- for랑 id가 일치해야 한 세트가 된다 -->
    <input type="text" class="form-control" id="id">
  </div>
  <div class="col-12"><!-- 비밀번호 -->
    <label for="pw" class="form-label">Password</label>
    <input type="password" class="form-control" id="pw">
  </div>
  <div class="col-12"><!-- 비밀번호 확인 -->
    <label for="c_pw" class="form-label">Confirm Password</label>
    <input type="password" class="form-control" id="c_pw">
  </div>
  <div class="col-12"><!-- 이름 -->
    <label for="name" class="form-label">Name</label> <!-- for랑 id가 일치해야 한 세트가 된다 -->
    <input type="text" class="form-control" id="name">
  </div>
	<div class="col-4">
    	<label for="tell1" class="form-label">Tell</label>
    	<select id="tell1" class="form-select">
			<option selected>010</option>
			<option>011</option>
		</select>
	</div>
	<div class="col-4">
		<label for="tell2" class="form-label">&nbsp;</label>
		<input type="text" class="form-control" id="tell2">
	</div>
	<div class="col-4">
		<label for="tell3" class="form-label">&nbsp;</label>
		<input type="text" class="form-control" id="tell3">
	</div>
<!-- 주소 -->
<label for="addr1" class="form-label">ADDRESS</label>
   <div class="row" id="addr1">
      <div class="col-8">
          <input type="text" class="form-control" id="addr">
        </div>
        <div class="col-2">
          <button type="submit" class="btn btn-primary" id="btn1">검 색</button>
        </div>
        <div class="col-12 mt-2">
          <input type="text" class="form-control" id="addr2">
        </div>
   </div>
<!-- 라디오버튼 -->

<div class="col">
	<div class="form-check form-check-inline">
	  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
	  <label class="form-check-label" for="inlineRadio1">남자</label>
	</div>
	<div class="form-check form-check-inline">
	  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
	  <label class="form-check-label" for="inlineRadio2">여자</label>
	</div>
</div>

  


  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <div class="col-12">
    <input type="submit" class="btn btn-primary" value="회원가입">
  </div>
</form>
</body>
</html>



