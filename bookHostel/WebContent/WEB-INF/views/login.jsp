<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<meta charset="ISO-8859-1">
	<title>Book Hostel</title>
</head>
<body>
	<div id="main">
		<div id="login_form">
			<h1 style="color: green">Login</h1>
			<form method="post" action="${pageContext.request.contextPath}/login" id = "form">
				<input type="text" name = "username" class="input" placeholder="Username" required>
				<input type = "password" name = "password" class="input" placeholder="Password" required>
				<input type="submit" class="submit" value="Login">
				<a href = "signUp">Create a new account?</a>
			</form>
			
		</div>
	</div>
</body>
<style>
	#main{
		width :1000px;
		min-height: 600px; 
		background-image : linear-gradient(120deg,#2ecc71,#9b59b6);
		margin : 0px auto;
		text-align: center;
	}
	#main #login_form {
		margin: 20px 20px;
		padding : 20px 0px 20px 0px;
		width : 400px;
		height : 500px;
		background : #dadada;
		text-align: center;
		margin : 0px auto;
	}
	#main #login_form .input {
		background: none;
		border: none;
		border-bottom : 2px solid blue;
		outline: none;
		width: 100%;
		parding : 0px 10px 0px 10px;
		height : 30px;
		
	}
	#main #login_form .submit{
		width : 150px;
		background-image : linear-gradient(120deg,#2ecc71,#9b59b6);
		color : white;
		margin : 20px;
		font-size: 15;
		border: none;
		height : 35px;
	}
</style>
</html>