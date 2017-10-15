<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<spring:url value="/resources/css/style.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<body>
<div class="jumbotron text-center">
  <h2>A Simple Spring MVC App</h2>
  <p>Spring MVC, Spring Boot, JPA, Hibernate, etc!</p> 
</div>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Home</a>
    </div>
    <ul class="nav navbar-nav">
      
      <li><a href="/books/create/book">Create Book</a></li>
      <li><a href="/books/create/person">Create Person</a></li>
      <li><a href="/books/list/books">List Books</a></li>
      <li><a href="/books/list/persons">List Persons</a></li>
    </ul>
  </div>
</nav>
<div class="container">
<h1>Create Person</h1>
<form:form method="POST" action="/books/create/person" modelAttribute="person">
<table class="table">
	<tr><td><form:label path="name">Name:</form:label></td><td><form:input path="name" /></td></tr>
	<tr><td><form:label path="email">Email:</form:label></td><td><form:input path="email" /></td></tr>
	<tr><td></td><td><input type="submit" name="submit-create-person" value="Register Person" /></td></tr>
</table>
</form:form>
</div>

<!--Footer-->
<footer class="page-footer center-on-small-only mdb-color lighten-3">

    <!--Footer Links-->
    <div class="container">
        <div class="row my-4">

            <!--First column-->
            <div class="col-md-4 col-lg-4">
                <h5 class="title mb-4 font-bold">Footer Content</h5>
                <p></p>
            </div>
            <!--/.First column-->

        </div>
    </div>
    <!--/.Footer Links-->

    <!--Copyright-->
    <div class="footer-copyright">
        <div class="container-fluid">
            Jenkins CI Server: <a href="https://192.168.2.53:8080">https://192.168.2.53:8080</a>

        </div>
    </div>
    <!--/.Copyright-->

</footer>
<!--/.Footer-->
         
</body>
</html>