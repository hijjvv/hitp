<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<meta name="viewport" content= "width=device-width, initail-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>



	<script type="text/javascript">
			
			function fn_validate() {
				
				//<form> 태그의 name 속성으로 <form>태그 객체를 받아온다.
				var formLogin = document.formLogin;
				
				//<form>태그 내 <input>태그의 속성으로 입력한 ID와 비밀번호를 받아온다
				var id = formLogin.id.value;
				var pw = formLogin.pw.value;
				
				if((id=="" || pw =="") || (id == 0 || pw == 0))
				{
					alert("아이디와 비밀번호를 입력해주세요.");				
				}
				else
				{
					formLogin.method = "post"; //전송방식 post
					formLogin.action = "/jwbook/mcontrol?action=login"; //action 속성을 서블릿 매핑 이름으로
					formLogin.submit(); //자바스크립트에서 서블릿으로 전송	
				}			
			}
		</script> 





<meta charset="UTF-8">
<title>로그인/회원가입</title>
</head>
<body>

	<div class="container w-50 mt-50 mx-auto">
		<br /><br />
		<h3 style="text-align: center;"><b>로그인 화면</b></h3>	
		<form method="post" action="/jwbook/mcontrol?action=login" name="formLogin" style="margin-top: 7%;" >
			<div class="form-group" style="margin-top: 1%;">
				<input type="text" class="form-control" placeholder="아이디" name="id"
					maxlength="20">
			</div>
			<div class="form-group" style="margin-top: 1%">
				<input type="password" class="form-control" placeholder="비밀번호"
					name="pw" maxlength="20">
			</div>
			<input type="button" onclick="fn_validate()"
				class="btn btn-dark form-control" value="로그인" style="margin-top: 1%">
		</form>
	</div>
	<div class="container w-50 mt-50 mx-auto">
		
		<table align="right" height="50" sytle="margin-top:1%" class="mo">
		<tr>
			<td><a style="text-decoration:none; display:inline-block" href="/jwbook/mcontrol?action=sp">회원가입 | </a></td>
			<td><a style="text-decoration:none; display:inline-block;" href="/jwbook/mcontrol?action=startpage">  메인메뉴 </a></td>			
		</tr>
		</table>
</body>
</html>