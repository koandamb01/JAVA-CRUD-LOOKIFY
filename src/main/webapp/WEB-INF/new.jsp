<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@ page import = "java.io.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>
	form{ display: inline; }
</style>
<title>Lookify</title>
</head>
<body>
	<div class="container">
		<h1>New Song</h1>
		<br><br>
		<div class="row">
			<div class="col-md-6">
				<form:form action="/songs/new" method="POST" modelAttribute="song">
			    <div class="form-group">
			        <form:label path="title">Title:</form:label>
			        <form:errors path="title" class="text-danger"/>
			        <form:input path="title" class="form-control"/>
			    </div>
			    
			    <div class="form-group">
			        <form:label path="artist">Artist: </form:label>
			        <form:errors path="artist" class="text-danger"/>
			        <form:input path="artist" class="form-control"/>
			    </div>
			    
			   <div class="form-group">
			        <form:label path="rating">Rating(1-10): </form:label>
			        <form:errors path="rating" class="text-danger"/>
			        <form:input path="rating" class="form-control" type="number"/>
			    </div>   
			    
			    <input type="submit" value="Submit" class="btn btn-primary"/>
			</form:form>    
			</div>
		</div>
		<br><br>
		<a href="/dashboard" class="btn btn-sm btn-success">Go Back</a>
	</div>
</body>
</html>
