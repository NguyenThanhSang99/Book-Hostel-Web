<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<meta charset="ISO-8859-1">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<title>Update Your Account</title>
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
		#info-form {
			height : 0px auto;
			margin-bottom: 20px;
		}
	</style>
</head>
<body>
	<div class = "container" style="background-image : linear-gradient(120deg,#2ecc71,#9b59b6)">
            <div class = "row">
                <div class = "col-sm-6 col-md-4 col-md-offset-4 wall">
                	<form><a href = "home" id="home"><img src="icons\homeicon.jpg"/></a></form>
                     <h1 class="text-center signIn-title" id = "si">Update Information Account</h1>
                     <div class="information_wall">
                         <form method="POST" action="${pageContext.request.contextPath}/updateUser">
	                         <div id="info-form">
	                         	First Name:
	                         	<input type="text" name = "firstName" class ="form-control" value ="${user.firstName }" placeholder="First Name" required autofocus>
	                         	Last Name:
	                         	<input type="text" name = "lastName" class ="form-control" value ="${user.lastName }" placeholder="Last Name" required autofocus>
	                         	Gender: <br>
	                            <input type="radio" name="gender" value="male" checked> Male<br>
	                            <input type="radio" name="gender" value="female"> Female<br>
	                            Birthday <br>
                        		<input type="date" id ="datefield" name="birthday" min="1919-01-01" class ="form-control" value ="${user.birthday }" placeholder="Birthday" required autofocus>
	                         	Address:
	                         	<input type="text" name = "address" class ="form-control" value ="${user.address }" placeholder="Address" required autofocus>
	                         	Phone:
	                         	<input type="tel" name="phone" class ="form-control" value ="${user.phone }" placeholder="NumberPhone" pattern="[0-9]{10}" required autofocus> Format 10 number: 0900354369<br>
	                         	Email:
	                         	<input type="email" name="mail" class="form-control" value ="${user.mail}" placeholder="Email">
		                      </div>
	                          <div>
	                            	<button class="btn" type="submit">
	                               		Ok
	                            	</button>
	                            	<a href="home">Cancel</a>
	                         </div>           
                        </form>
                     </div>
                </div>
            </div>
    </div>
    <script>
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+1; //January is 0!
		var yyyy = today.getFullYear();
		 if(dd<10){
		        dd='0'+dd
		    } 
		    if(mm<10){
		        mm='0'+mm
		    } 
	
		today = yyyy+'-'+mm+'-'+dd;
		document.getElementById("datefield").setAttribute("max", today);
	</script>
</body>
</html>