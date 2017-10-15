<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<spring:url value="/resources/css/style.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<body>
<table>
<tr><th colspan="2">${title}</th></tr>
<tr><td>Author</td><td>${author}</td></tr>
<tr><td>ISBN</td><td>${isbn}</td></tr>
<tr><td>Pages</td><td>${pages}</td></tr>
<tr><td>Year Published</td><td>${year}</td></tr>
<tr><td>Edition</td><td>${edition}</td></tr>
<tr><td>Language</td><td>${language}</td></tr>
<tr><td>ID</td><td>${id}</td></tr>
</table>
</body>
</html>