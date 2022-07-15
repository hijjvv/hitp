<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시판 관리 웹</title>
</head>
<body>
	<div class="container w-75 mt-5 mx-auto">
	<h2>게시글 목록</h2>
	<hr />
	<ul class="list-group">
	 <c:forEach var="board" items="${boardlist}" varStatus="status">
	  <li class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">
	  <a href="mcontrol?action=getBoard&aid=${board.aid}" class="test-decoration-none">[${status.count}] ${board.title}, ${board.date}</a>
	  <a href="mcontrol?action=deleteBoard&aid=${board.aid}"><span class="badgebg-secondary"> &times;</span></a> }
	  </li>
	 </c:forEach>
	</ul>
	<hr />
	<c:if test="${error != null}">
	 <div class="alert alert-danger alert-dismissible fade show mt-3">
	   에러 발생: ${error}
	   <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
	  </div>
	 </c:if>
	 <button class="btn btn-outline-info mb-3" type="button" data-bs-toggle="collapse" data-bs-target="#addForm" aria-expanded="false" aria-controls="addForm">
	 게시글 등록
	 </button>
	 <div class="collapse" id="addForm">
	 	<div class="card card-body">
	 		<form method="post" action="/jwbook/mcontrol?action=addBoard"
	 			enctype="multipart/form-data">
	 			<label class="form-label">제목</label>
	 			<input type="text" name="title" class="form-control">
	 			<label class="form-label">이미지</label>
	 			<input type="file" name="file" class="form-control">
	 			<label class="form-label">게시글 내용</label>
	 			<textarea cols="50" rows="5" name="content" class="form-control"></textarea>
	 			<button type="submit" class="btn btn-success mt-3">저장</button>
	 		</form>
	 	</div>
	 </div>
	 </div>

</body>
</html>
