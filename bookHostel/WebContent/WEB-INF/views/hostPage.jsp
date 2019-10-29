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
<title>Book Hostel</title>
<style type="text/css">
	body {
			font-size : 15px;
			width: 1000px;
			margin : 0px auto;
			color : #ccc;
	}
	.main{
		width: 970px;
		min-height: 600px;
		background: #fff;
	}
	#menu{
		background : blue;
		width: 300px;
		min-height : 400px;
	}
	#menu ul{
		margin : 0px;
		padding : 0px;
	}
	#menu ul li {
		list-style : none;
		height: 50px;
		
	}
	#menu ul li a {
		text-decoration: none;
		display :block;
		line-height : 50px;
		border-bottom: 1px solid #ccc;
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
<div class="main">
	<div id="myCarousel banner" class="carousel slide" data-ride="carousel">
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
				      <img src="images\banner6.jpg" alt="BookHostel">
				    </div>
				
				    <div class="item">
				      <img src="images\banner7.jpg" alt="Design">
				    </div>
				
				    <div class="item">
				      <img src="images\banner8.jpg" alt="By">
				    </div>
				    <div class="item">
				      <img src="images\banner9.jpg" alt="Sang">
				    </div>
				    <div class="item">
				      <img src="images\banner12.jpg" alt="GoodLuck">
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
			<div id="menu">
				<ul>
					<li><a href="viewContract">View Contract</a>
					<li><a href = "addRoom" >Add Room</a></li>
					<li><a href = "roomList">View Room List</a></li>
					<li><a href = "updateUser">Change Information Account</a></li>		
					<li><a href = "logout">Log Out</a></li>
				</ul>
			</div>
</div>
</body>
</html>