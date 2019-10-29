<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<meta charset="ISO-8859-1">
	<title>Sign Up</title>
	<style>
	.information_wall{
		color : blue;
		min-height: 500px;
	}
	.wall {
		background: #fff;
	}
	#si{
		background: #66ff66;
		color : #cc00cc;
	}
	.btn {
		background: blue;
		color: white;
		font-size: 15;
	}
	#sign-form {
		height : 0px auto;
		margin-bottom: 20px;
	}
</style>
</head>
<body>
	<div class = "container" style="background: green">
            <div class = "row">
                <div class = "col-sm-6 col-md-4 col-md-offset-4 wall">
                     <h1 class="text-center signIn-title" id = "si">Sign Up</h1>
                     <div class="information_wall">
                         <form method="POST" action="${pageContext.request.contextPath}/signUp">
	                         <div id="sign-form">
	                         	User Name:
	                            <input type="text" name = "username" class ="form-control" placeholder="User Name" required autofocus>
	                            Password:
	                            <input type ="password" id="password" name = "password" minlength = 8 class ="form-control" placeholder="Password" required autofocus>
	                            Re-enter the password again: 
	                            <input type ="password" id = "confirm_password" minlength = 8 class ="form-control" placeholder="Password" required autofocus>
		                      </div>
	                          <div>
	                            	<button class="btn" type="submit">
	                               		Sign Up
	                            	</button>
	                            	<a href = "login">Login</a>
	                         </div>           
                        </form>
                     </div>
                </div>
            </div>
    </div>
    <script type="text/javascript">
		  var password = document.getElementById("password")
		    , confirm_password = document.getElementById("confirm_password");
		
		  function validatePassword(){
		    if(password.value != confirm_password.value) {
		      confirm_password.setCustomValidity("Passwords Don't Match");
		    } else {
		      confirm_password.setCustomValidity('');
		    }
		  }
		
		  password.onchange = validatePassword;
		  confirm_password.onkeyup = validatePassword;
    </script>   
</body>
</html>