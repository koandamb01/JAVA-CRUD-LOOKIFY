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
	.container{
		padding-top: 5vh;
		text-align: center;
	}
	
	.container a{
		margin-top: 50px;
	}
</style>
<title>Language MVC</title>
</head>
<body>
	<div class="container">
		<h1>Welcome to Lookify</h1>
		<a href="/dashboard" class="btn btn-sm btn-primary">Start Looking!</a>
	</div>
</body>
</html>
