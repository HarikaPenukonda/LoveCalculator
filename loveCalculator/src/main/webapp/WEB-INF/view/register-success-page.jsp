<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sucess</title>
</head>
<body style="align:center">
	<h1>Love Calculator</h1>
	<hr>
		<div align="center">
		<h2>Registered Successfully!</h2>
		<p>Name : ${registerInfo.myName}</p>
		<p>UserName : ${registerInfo.userName}</p>
		<p>Password : ${registerInfo.password}</p>
		<p>Country: ${registerInfo.country}</p>
		<p>Hobbies : ${registerInfo.hobby}</p>
		<%-- <p>Hobbies: </p>
		<c:forEach var="temp" items="${registerInfo.hobby}">
			${temp}
		</c:forEach> --%>
	
		<p>Gender: ${registerInfo.gender}</p>

	</div> 
</body>
</html>