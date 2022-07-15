<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<title>게시판 관리 앱</title>
</head>
<body>
	<div class="container w-75 mt-5 mx-auto">
	<h2>${board.title}</h2>
	<hr />
	<div class="card w=75 mx-auto">
		<img class="card-img-top" src="${board.img}">
		<div class = "card-body">
			<h4 class="card-title">Date: ${board.date}</h4>
			<p class="card-text">Content: ${board.content}</p>
		</div> 
	</div>
	<hr />
	<a href="javascript:history.back()" class="btn btn-primary"> << Back </a>
		 
		
	 <button class="btn btn-outline-info mb-3" type="button" data-bs-toggle="collapse" data-bs-target="#updateForm" aria-expanded="false" aria-controls="updateForm">
	 게시글 수정
	 </button>
	 <div class="collapse" id="updateForm"> 
	 	<div class="card card-body">
	 		<form method="post" action="/jwbook/mcontrol?action=updateBoard"
	 			enctype="multipart/form-data" name="frm">	 			
	 			<input type="hidden" name="aid" value="${board.aid}" />
	 			<label class="form-label">제목</label>
	 			<input type="text" name="title" class="form-control" value="${board.title}"/>	 			
	 			<label class="form-label">게시글 내용</label>
	 			<textarea cols="50" rows="5" name="content" class="form-control">${board.content}</textarea>
	 			<button type="submit" class="btn btn-success mt-3" onclick="return send()">수정</button>
	 		</form>
	 	</div>
	 </div>
<!-- 	 
	 <button class="btn btn-outline-info mb-3" type="button" data-bs-toggle="collapse" data-bs-target="#updateForm" aria-expanded="false" aria-controls="updateForm">
	 게시글 삭제
	 </button>
	 <div class="collapse" id="updateForm"> 
	 	<div class="card card-body">
	 		<form method="post" action="/jwbook/mcontrol?action=updateBoard"
	 			enctype="multipart/form-data" name="frm">	 			
	 			<input type="hidden" name="aid" value="${board.aid}" />
	 			<label class="form-label">제목</label>
	 			<input type="text" name="title" class="form-control" value="${board.title}"/>	 			
	 			<label class="form-label">게시글 내용</label>
	 			<textarea cols="50" rows="5" name="content" class="form-control">${board.content}</textarea>
	 			<button type="submit" class="btn btn-success mt-3" onclick="return send()">삭제</button>
	 		</form>
	 	</div>
	 </div>
	  -->
	
	</div>
<script>
function send(){
	let title = document.frm.title.value;
	if(title==""){
	alert("제목을입력하세요");
	frm.title.focus();
	return false;
	} frm.submit
	}
	

</script>
</body>
</html>