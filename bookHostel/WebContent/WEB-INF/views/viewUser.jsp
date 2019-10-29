<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.msita.hostel.bo.User"%>
<!DOCTYPE html>
<html>
<head>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<meta charset="ISO-8859-1">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<title>Booker Information</title>
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
			font-size: 18px;
		}
	</style>
</head>
<body>
	<div class = "container" style="background-image : linear-gradient(120deg,#2ecc71,#9b59b6)">
            <div class = "row">
                <div class = "col-sm-6 col-md-4 col-md-offset-4 wall">
                     <h1 class="text-center signIn-title" id = "si">INFORMATION OF BOOKER</h1>
                     <div class="information_wall">
                         <form method="POST" action="${pageContext.request.contextPath}/updateUser">
	                         <div id="info-form">
	                         	Name: ${user.firstName } ${user.lastName }
	                         	<br>Gender: ${user.gender }
	                            <br>Birthday: ${user.birthday }
	                         	<br>Address: ${user.address }
	                         	<br>Phone: ${user.phone }
	                         	<br>Email:${user.mail}
		                      </div>
	                          <div>
	                            	<a href="viewContract">Cancel</a>
	                         </div>           
                        </form>
                     </div>
                </div>
            </div>
    </div>
</body>
</html>