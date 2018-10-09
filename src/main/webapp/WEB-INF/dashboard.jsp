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
	
	.container{
		padding-top: 5vh;
	}
</style>
<title>Language MVC</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<a href="/songs/new" class="btn btn-sm btn-primary">Add a Song</a>
			</div>
			
			<div class="col-md-3">
				<a href="/search/topTen" class="btn btn-sm btn-primary">Top Songs</a>
			</div>
			
			<div class="col-md-6">
				<form action="/search/${song.artist}">
					<div class="row">
						<div class="col-md-6 text-right">
							<input type="text" name="artist" class="form-control" placeholder="Search by artist">
						</div>
						
						<div class="col-md-6">
							<input type="submit" value="Search Artists" class="btn  btn-sm btn-primary">
						</div>
					</div>
				</form>
			</div>
		</div>
		
		<br><br>
		<table class="table table-striped">
		    <thead class="thead-dark">
		        <tr>
		            <th>Name</th>
		            <th>Rating</th>
		            <th>Actions</th>
		        </tr>
		    </thead>
		    <tbody>
		        <c:forEach items="${songs}" var="song">
		        <tr>
		            <td><a href="/songs/${song.id}">${song.title}</a></td>
		            <td>${song.rating}</td>
		            <td>
		            	<form action="/songs/${song.id}" method="POST">
		            		<input type="hidden" name="_method" value="delete">
						    <input type="submit" value="Delete" class="btn  btn-sm btn-danger">
						</form>
		            </td>
		        </tr>
		        </c:forEach>
		    </tbody>
		</table>
	</div>
</body>
</html>
