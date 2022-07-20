<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content= "width=device-width, initail-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
body {
background-image: url("img/2.jpg");
background-repeat: no-repeat;
background-size: cover;}

header{
opacity: 0.5;
display:inline-block; 
background-color: #000000; 
width: 100%
}

ul.munu-ul {
color: #FFFFFF
}

p.pp{
position: relative;
top: ;
bottom: ;}



</style>

<title>JSP PROJECT GROUP#6</title>

<body>
<!-- 상단 시작 -->
<header class="page-head">
		
		<div class="logo-pannel">
		<table style=align:center;>	
		<tr>
		<td>
		<img src="img/logo.jpg" alt width = "241" height="52"></div>
		</td>
		<td style="margin-top: 4%; text-align: center;">
		<nav class="menu-class">
			<ul class="munu-ul">
				<li class="login" style="display:inline-block; padding: 20px"><a href="/jwbook/mcontrol?action=loginl" style="text-decoration:none; color:#FFFFFF;"><b>LOG IN</b></a></li>
				<li class="logout" style="display:inline-block; padding: 20px"><a href="/jwbook/mcontrol?action=logout" style="text-decoration:none"></a><b>LOG OUT</b></li>
				<li class="board" style="display:inline-block; padding: 20px"><a href="/jwbook/mcontrol?action=listBoard" style="text-decoration:none; color:#FFFFFF"><b>BOARD</b></a></li>
				<li class="MENU1" style="display:inline-block; padding: 20px"><a>MENU#A</a></li>
				<li class="MENU2" style="display:inline-block; padding: 20px"><a>MENU#B</a></li>
			</ul>
		</nav>
		</td>
		</tr>	
		</table>			
	</div>
</header>
<!-- 상단 끝 -->
<!-- 콘텐츠 시작 -->
	<div>
		<div id="mainpage">
			<section id="home" data-type="anchor">
				<div class="maintext" style="text-align:center;">					
					<p class= pp style="font-size: 1.8em; font-weight: bold; color: #FFFFFF;">6조 JSP PROJECT 입니다.</p>
					<div style="left: 100px; width: 450px; bottom: 140px;  ">								
					</div>
				</div>				
			</section>		
		</div>		
	</div>
<!-- 콘텐츠 끝 -->

<!-- 하단 시작 -->


</body>
</html>
