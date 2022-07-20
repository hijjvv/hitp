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

div{  background-color: $indigo-900;
		align-items : center;
		justify-content:center; 
		}

header {
height: 200px;
background-color: tomato;
display : flex;
color: white;
align-items: center;
justify-content:center;
}

nav{
	display : flex;
	background-color:  #333333;
	align-items : center;
		justify-content:center;
	
	
	
}

button{
	margin: 30px;
	}

body{
	background-color: gray;
		align-items : center;
		justify-content:center;
}

img {
	align-content: center;
	margin: auto;
	display: block;
}


</style>





</head>
<body>



<header  > <h4>6조 게시판</h4> <br />


<h5>hellow world!</h5> 


</header>

<br />

<div class="container-sm" >


		<nav>
		
		
			<form method="POST" action="/jwbook/mcontrol?action=listBoard">
		<button type="submit" class="btn btn-secondary btn-lg">게시판</button>
		</form>


		
		<form method="POST" action="/jwbook/mcontrol?action=loginl">
		<button type="submit" class="btn btn-secondary btn-lg">로그인</button>
		</form>
		

		<form method="POST" action="/jwbook/mcontrol?action=logout">
	   <button type="submit" class="btn btn-secondary btn-lg">로그아웃</button>
		</form>
		</nav>
		
		
		
		
		</div>
		<br /><br />
		
			<div class="container-md" >
<img src="tp/img/b1.jpg" alt="" />
		 </div>

		





</body>
</html>