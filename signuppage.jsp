<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<meta charset="UTF-8">
<meta name="viewport" content= "width=device-width, initail-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<script type="text/javascript">
 var result ;
 result = <%=request.getAttribute("result") %> ;

		function usercheck(){
	  
     		var f1 = document.formsign;
			var id = f1.id.value;
			
			f1.method = "post"; //전송방식 post
			f1.action = "/jwbook/mcontrol?action=idcheck"; //action 속성을 서블릿 매핑 이름으로
			f1.submit(); //자바스크립트에서 서블릿으로 전송
			
			
			
			
			 
		}
		
		

		function reset(){
			
		}
			
			
			function fnsign() {
				
				
			
				//<form> 태그의 name 속성으로 <form>태그 객체를 받아온다.
				var formsign = document.formsign;
				
				//<form>태그 내 <input>태그의 속성으로 입력한 ID와 비밀번호를 받아온다
				var id = formsign.id.value;
				var pw = formsign.pw.value;
				var name = formsign.pw.value;
				var email = formsign.pw.value;
				
				if((id=="" || pw =="" || name =="" || email =="") || (id == 0 || pw == 0|| name == 0|| email == 0))
				{
					alert("4개의 양식을 모두 입력해 주세요.");				
				} else if( result !=0){
					
					alert("id 중복체크를 해주세요.");	
				}
					
				
				
				
				
				else if (result == 0)
				{
					formsign.method = "post"; //전송방식 post
					formsign.action = "/jwbook/mcontrol?action=signup"; //action 속성을 서블릿 매핑 이름으로
					formsign.submit(); //자바스크립트에서 서블릿으로 전송	
					
					alert('회원가입 성공!');
				}			
			}

			
			function change() {
				result = 1;
				
				
			}
			</script>
		
		
		




<title>Insert title here</title>
</head>
<body>


<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="/jwbook/mcontrol?action=signup" name="formsign">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" class="" placeholder="아이디" name="id" maxlength="20" value="${iid}" onchange="change()" >
						<input type="button" class="btn btn-primary form-control" value="중복확인" onclick="usercheck()" >
					<input type="text" value="${msg}" />
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="pw" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="name" maxlength="20">
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="email" maxlength="20">
					</div>
					<input type="button" class="btn btn-primary form-control" value="회원가입" onclick="fnsign()" >
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>





</body>
</html>