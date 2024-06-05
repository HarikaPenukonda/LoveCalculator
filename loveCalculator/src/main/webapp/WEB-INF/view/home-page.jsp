<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoveCalculator</title>
</head>
<body align="center">

<h1>Love Calculator</h1>
<hr>
<div align="center">
<a href="/loveCalculator/register-user">New User? Register Here</a>
<form:form action="process-homepage" method="get" modelAttribute="userInfo">
	
	<p>
		<label for="yn">Your Name: </label>
		<form:input id="yn" path="userName"></form:input>
	</p>
	<p>
		<label for="cn">Crush Name: </label>
		<form:input id="cn" path="crushName"></form:input>
	</p>
	
	<input type="submit" value="calculate">

</form:form>	
</div>
</body>
</html>