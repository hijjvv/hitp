<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content= "width=device-width, initail-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<title>6조 프로젝트</title>

<style>


form{ display : inline}

</style>


</head>
<body>
<div  >
		<h3>6조 프로젝트</h3>
		<hr />
		
		
		<form method="POST" action="/jwbook/mcontrol?action=loginl">
		<button type="submit" >로그인</button>
		</form>
		
		
			<form method="POST" action="/jwbook/mcontrol?action=listBoard">
		<button type="submit" >게시판</button>
		</form>
		
		
	
		 
</div>
</body>
</html>