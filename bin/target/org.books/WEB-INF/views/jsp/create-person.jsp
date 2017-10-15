<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Record Person</title>
</head>
<body>
<h1>Create Person</h1>
<div>
<spring:form method="POST" action="/books/create/person" modelAttribute="person">
<table>
	<tr><td><spring:label path="name">Name:</spring:label></td><td><spring:input path="name" /></td></tr>
	<tr><td><spring:label path="email">Email:</spring:label></td><td><spring:input path="email" /></td></tr>
	<tr><td></td><td><input type="submit" name="submit-create-person" value="Register Person" /></td></tr>
</table>
</spring:form>
</div>
</body>
</html>