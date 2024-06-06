<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<style type="text/css">
	* {
  	box-sizing: border-box;
	}
	#hd{
		color: #FF1493;
	}
	/* #mname,#uname,#pwd,#ctry{
  		display: flex;
  		flex-direction: row-reverse;
  		
	} */
	
	.container {
  	border-radius: 5px;
  	background-color: #FFF0F5;
  	padding: 120px;
  	padding-top: 10px;
	}
	
	#reg{
		background-color: #FF1493;
		padding: 10px;
		border-radius: 5px;
		border-color: #FF1493;
	}
	
	
}
	
	
</style>

</head>
<body style="align:center"> 
	<h1 id="hd">Love Calculator</h1>
	<hr>
	<div class="container">
		<h2 id="hd">Register Here</h2>
		<form:form action="register-success" method="get" modelAttribute="registerInfo">
			
			<p>
				<label for="mname">Name: </label>
				<form:input id="mname" path="myName"/>
			</p>
			
			 <p>
				<label for="uname">UserName: </label>
				<form:input id="uname" path="userName"/>
			</p>
			
			<p>
				<label for="pwd">Password: </label>
				<form:password id="pwd" path="password"/>
			</p>
			
			<p>
				<label for="ctry">Country: </label>
				<form:select path="country">
					<form:option id="ctry" value="India" label="India"></form:option>
					<form:option id="ctry" value="USA" label="USA"></form:option>
					<form:option id="ctry" value="Canada" label="Canada"></form:option>
					<form:option id="ctry" value="Australia" label="Australia"></form:option>
				</form:select>
			</p>
		<p>
				<label for="hby">Hobbies: </label>
				Coding <form:checkbox id="hby" path="hobby" value="coding"/>
				Reading <form:checkbox id="hby"  path="hobby" value="reading"/>
				Travel <form:checkbox id="hby"  path="hobby" value="travel"/>
				Other <form:checkbox id="hby"  path="hobby" value="other"/>
			</p>
			
				<p>
				<label for="gdr">Gender: </label>
				female<form:radiobutton id="gdr" path="gender" value="female"/>
				male<form:radiobutton id="gdr" path="gender" value="male"/>
				
			</p> 
			
			<input id="reg" type="submit" value="register">
			
		</form:form>
	</div>
</body>
</html>