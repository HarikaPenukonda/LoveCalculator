<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
* {
	box-sizing: border-box;
}

#heading {
	color: #FF1493;
}

#yn, #cn {
	width: 25%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	outline: none;
}

.container {
	border-radius: 5px;
	background-color: #FFF0F5;
	padding: 120px;
}

#reg, #cal {
	background-color: #FF1493;
	padding: 10px;
	border-radius: 5px;
	border-color: #FF1493;
}

.error {
	color: red;
	position: fixed;
	text-align: left;
	margin-left: 30px;
	margin-top: 10px;
}

.body {
	align: center;
}
</style>

<script>
	
	function validateUserName(){
		var user = document.getElementById("yn").value
		if(user.length < 3){
			alert("Username should have atleast 3 characters");
			return false;
		}else{
			return true;
		}
	}
</script>

<title>LoveCalculator</title>
</head>
<body>

	<h1 id="heading">Love Calculator</h1>
	<hr>
	<div class="container">
		New User?
		<button id="reg">
			<a href="/loveCalculator/register-user">Register</a>
		</button>
		<form:form action="process-homepage" method="get"
			modelAttribute="userInfo">

			<p>
				<label for="yn">Your Name: </label>
				<form:input id="yn" path="userName"></form:input>
				<form:errors path="userName" class="error" />
			</p>
			<p>
				<label for="cn">Crush Name: </label>
				<form:input id="cn" path="crushName"></form:input>
			</p>
			
			<p>
				<form:checkbox path="termsAndConditions" id="check"/>
				<label>I am agreeing that this is just for fun</label>
				<form:errors path="termsAndConditions" class="error"/>
			</p>
			<input id="cal" type="submit" value="calculate">

		</form:form>
	</div>
</body>
</html>