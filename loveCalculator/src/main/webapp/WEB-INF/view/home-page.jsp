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
<form action="process-homepage" method="get">
	
	<p>
		<label for="yn">Your Name: </label>
		<input type="text" id="yn" name="userName">
	</p>
	<p>
		<label for="cn">Crush Name: </label>
		<input type="text" id="cn" name="crushName">
	</p>
	
	<input type="submit" value="calculate">

</form>	
</div>
</body>
</html>