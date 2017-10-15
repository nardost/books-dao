<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Record Book</title>
</head>
<body>
<h1>Record Book</h1>
<div>
<spring:form method="POST" action="/books/create/book" modelAttribute="book">
<table>
	<tr><td><spring:label path="title">Title</spring:label></td><td><spring:input path="title" /></td></tr>
	<tr><td><spring:label path="author">Author</spring:label></td><td><spring:input path="author" /></td></tr>
	<tr><td><spring:label path="isbn">ISBN</spring:label></td><td><spring:input path="isbn" /></td></tr>
	<tr><td><spring:label path="pages">Pages</spring:label></td><td><spring:input path="pages" /></td></tr>
	<tr><td><spring:label path="year" class="date">Year</spring:label></td><td><spring:input path="year" /></td></tr>
	<tr><td><spring:label path="edition">Edition</spring:label></td><td><spring:input path="edition" /></td></tr>
	<tr><td><spring:label path="language">Language</spring:label></td><td><spring:input path="language" /></td></tr>
	<tr><td></td><td><input type="submit" name="submit-create-book" value="Register Book" /></td></tr>
</table>
</spring:form>
</div>
</body>
</html>