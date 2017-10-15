<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<spring:url value="/resources/css/style.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<body>
<h1>List of Books</h1>
<c:if test="${not empty books}">
<table>
<tr><th>TITLE</th><th>AUTHOR</th><th>ISBN</th><th>PAGES</th><th>YEAR</th><th>EDITION</th><th>LANGUAGE</th></tr>
<c:forEach var="book" items="${books}" varStatus="loop">
	<tr class="r-${loop.index % 2}"><td>${book.title}</td><td>${book.author}</td><td>${book.isbn}</td><td>${book.pages}</td><td>${book.year}</td><td>${book.edition}</td><td>${book.language}</td></tr>
</c:forEach>
</table>
</c:if>
</body>
</html>