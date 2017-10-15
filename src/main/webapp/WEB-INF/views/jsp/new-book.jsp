<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
      <a class="navbar-brand" href="/org.books/">Home</a>
    </div>
    <ul class="nav navbar-nav">
      
      <li><a href="/org.books/create/book">Create Book</a></li>
      <li><a href="/org.books/create/person">Create Person</a></li>
      <li><a href="/org.books/list/books">List Books</a></li>
      <li><a href="/org.books/list/persons">List Persons</a></li>
    </ul>
  </div>
</nav>
<div class="container">
	<table class="table table-striped">
	<tr><th colspan="2">${title}</th></tr>
	<tr><td>Author</td><td>${author}</td></tr>
	<tr><td>ISBN</td><td>${isbn}</td></tr>
	<tr><td>Pages</td><td>${pages}</td></tr>
	<tr><td>Year Published</td><td>${year}</td></tr>
	<tr><td>Edition</td><td>${edition}</td></tr>
	<tr><td>Language</td><td>${language}</td></tr>
	<tr><td>ID</td><td>${id}</td></tr>
	</table>
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
            Jenkins CI Server: <a href="http://192.168.2.53:8080">https://192.168.2.53:8080</a>

        </div>
    </div>
    <!--/.Copyright-->

</footer>
<!--/.Footer-->
</body>
</html>