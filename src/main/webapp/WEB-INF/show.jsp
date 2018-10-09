<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@ page import = "java.io.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<title>Lookify</title>
</head>
<body>
	<div class="container">
		<h1>Song Detail</h1>
		<div class="row">
			<div class="col-md-6">
				<ul class="list-group">
				  <li class="list-group-item d-flex justify-content-between align-items-center">
				    Title:<span class="badge badge-pill">${song.title}</span>
				  </li>
				  <li class="list-group-item d-flex justify-content-between align-items-center">
				    Artist: <span class="badge badge-pill">${song.artist}</span>
				  </li>
				  <li class="list-group-item d-flex justify-content-between align-items-center">
				    Rating(1-10): <span class="badge badge-pill">${song.rating}</span>
				  </li>
				</ul>
			</div>
		</div>
		<br>
		<a href="/dashboard" class="btn btn-sm btn-primary">Go Back</a>
	</div>
</body>
</html>
