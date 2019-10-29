<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>	
    <link rel="stylesheet" href="https://www.w3shools.com/w3css/4/w3.css">
	<meta charset="ISO-8859-1">
	<meta charset="ISO-8859-1">
	<title>Book Hostel</title>
	<style>
		body {
			font-size : 15px;
			width: 1000px;
			margin : 0px auto;
			color : #ccc;
		}
		#main {
			width : 970px;
			background : black;
			min-height: 1000px;
		}
		#menu{
			background : black;
			height : 40px;
		}
		#webInfo{
			width: 970px;
    		height: 0px auto;
    		clear : left;
    		cursor : wait;
		}
		#menu ul{
			margin : 0px;
			padding : 0px;
		}
		#menu ul li {
			list-style : none;
			float : left;
		}
		#menu ul li a {
			text-decoration: none;
			display :block;
			height : 40px;
			line-height : 40px;
			border-right: 1px solid #ccc;
			color : white;
			padding : 0px 20px 0px 20px;
			cursor: pointer;
		}
		#menu ul li .doing {
			background : blue;
		}
	</style>
</head>
<body>
	<div id="main">
		<div id = "menu">
			<ul>
				<li><a class = "doing" href = "home" >Home</a></li>
				<li><a href = "hostList">Host List</a></li>
				<li><a href = "listRequestHost">Request Host</a></li>
				<li><a href = "userList">User List</a></li>
				<li style ="float: right"><a href = "logout">Log Out</a></li>
			</ul>
		</div>
		
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			    <li data-target="#myCarousel" data-slide-to="1"></li>
			    <li data-target="#myCarousel" data-slide-to="2"></li>
			    <li data-target="#myCarousel" data-slide-to="3"></li>
			    <li data-target="#myCarousel" data-slide-to="4"></li>
			  </ol>
			
			  <!-- Wrapper for slides -->
				  <div class="carousel-inner">
				    <div class="item active">
				      <img src="images\banner11.jpg" alt="BookStore">
				    </div>
				
				    <div class="item">
				      <img src="images\banner12.jpg" alt="Design">
				    </div>
				
				    <div class="item">
				      <img src="images\banner13.jpg" alt="By">
				    </div>
				    <div class="item">
				      <img src="images\banner14.jpg" alt="Sang">
				    </div>
				    <div class="item">
				      <img src="images\banner15.png" alt="GoodLuck">
				    </div>
				  </div>
				
				  <!-- Left and right controls -->
				  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="right carousel-control" href="#myCarousel" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right"></span>
				    <span class="sr-only">Next</span>
				  </a>
			</div>
		
		<div id="webInfo">
			<h1 style="text-align:center; color:blue;">FIND HOME TO LIVE</h1>
			<h3 style="text-align:center; color:orange;">Website book room</h3>
		</div>
</body>
</html>