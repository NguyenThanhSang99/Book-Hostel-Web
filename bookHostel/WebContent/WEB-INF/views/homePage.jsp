<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.msita.hostel.bo.Room"%>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>	
    <link rel="stylesheet" href="https://www.w3shools.com/w3css/4/w3.css">
	<meta charset="ISO-8859-1">
	<title>Book Hostel</title>
<style>
		body {
			font-size : 15px;
			width: 1000px;
			margin : 0px auto;
			color : #ccc;
		}
		.main{
			width: 970px;
			min-height: 1200px;
			background: black;
		}
		.menutop{
			clear: left;
			height:40px;
			background: teal;
		}
		.menu{
		 	list-style: none;
			padding: 0px;
		}
		.menu a{
			text-decoration: none;
			color: #fff;
		}
		.menu ul{
			list-style: none;
			position: absolute;
			top : 41px;
			left: 0px;
			margin: 0px;
			padding: 0px;
			display: none;
			z-index: 2;
		}
		.menu li {
			float : left;
			width: 150px;
			line-height: 1.5 em;
			position: relative;
			text-align: center;
			background: teal;
			padding: 10px;
			border-right: 1px solid #ccc;
		}
		
		.menu li:hover {
			background : green;
			cursor: pointer;
		}
		.menu ul ul{
			list-style: none;
			left:150px;
			top:0px;
		}
		#banner{
			width: 970px;
			height: 250px;
			float: left;
		}
		#view_form{
			width: 970px;
			height: 100px;
			z-index: 1;
			background: #fff;
		}
		#search{
			position : absolute;
			margin-top:50px;
			margin-left: 200px;
			height: 50px;
			width: 700px;
		}
		#search #left{
			width : 500px;
			float : left;
		}
		#search #right{
			width : 200px;
			float : left;
		}
		#search #right #submit {
			background : green;
			color : #fff;
			width: 150px; 
			height:35px;;
		}
		#list {
			background: white;
			font-size: 20px;
			color: white;
		}
		#list #room{
			clear: left;
			background: #fff;
			border-bottom: 1px solid black;
		}
		#list #room #image{
			width:200px;
			float:left;
		}
		#list #room #info{
			width:100%;
			height: 220px;
			background-image : linear-gradient(120deg,#2ecc71,#9b59b6);
			text-align: left;
			color: white;
		}
		#roomLink {
			list-style: none;
			border: none;
			text-decoration: none;
			clear: left;
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
				      <img src="images\banner12.jpg" alt="BookHostel">
				    </div>
				
				    <div class="item">
				      <img src="images\banner2.jpg" alt="Design">
				    </div>
				
				    <div class="item">
				      <img src="images\banner3.jpg" alt="By">
				    </div>
				    <div class="item">
				      <img src="images\banner4.jpg" alt="Sang">
				    </div>
				    <div class="item">
				      <img src="images\banner5.jpg" alt="GoodLuck">
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
	<div class="w3-content menutop">
			<ul class="menu">
				<li><a href = "listAllRoom">All  Room</a></li> <!-- Display all room -->
				<li><a href = "#">View By Address</a>  <!-- Find room by address -->
					<ul>
						<li><a href = "findRoom?address=Hai Chau">Hai Chau</a>    <!-- County of Da Nang -->
							<ul>
							 	<li><a href = "findRoom?address=Binh Thuan">Binh Thuan</a></li>  <!-- Ward of county -->
							 	<li><a href = "findRoom?address=Binh Chau">Binh Chau</a></li>
							 	<li><a href = "findRoom?address=Hai Chau I">Hai Chau I</a></li>
							 	<li><a href = "findRoom?address=Hai Chau II">Hai Chau II</a></li>
							 	<li><a href = "findRoom?address=Hoa Cuong Bac">Hoa Cuong Bac</a></li>
							 	<li><a href = "findRoom?address=Hoa Cuong Nam">Hoa Cuong Nam</a></li>
							 	<li><a href = "findRoom?address=Hoa Thuan Dong">Hoa Thuan Dong</a></li>
							 	<li><a href = "findRoom?address=Hoa Thuan Tay">Hoa Thuan Tay</a></li>
							 	<li><a href = "findRoom?address=Nam Duong">Nam Duong</a></li>
							 	<li><a href = "findRoom?address=Phuoc Ninh">Phuoc Ninh</a></li>
							 	<li><a href = "findRoom?address=Thach Thang">Thach Thang</a></li>
							 	<li><a href = "findRoom?address=Thuan Phuoc">Thuan Phuoc</a></li>
							 	<li><a href = "findRoom?address=Thanh Binh">Thanh Binh</a></li>
							</ul>
						</li>
						<li><a href = "findRoom?address=Cam Le">Cam Le</a>
							<ul>
							 	<li><a href = "findRoom?address=Hoa An">Hoa An</a></li>
							 	<li><a href = "findRoom?address=Hoa Phat">Hoa Phat</a></li>
							 	<li><a href = "findRoom?address=Hoa Tho Dong">Hoa Tho Dong</a></li>
							 	<li><a href = "findRoom?address=Hoa Tho Tay">Hoa Tho Tay</a></li>
							 	<li><a href = "findRoom?address=Hoa Xuan">Hoa Xuan</a></li>
							 	<li><a href = "findRoom?address=Khue Trung">Khue Trung</a></li>
							</ul>
						</li>
						
						<li><a href = "findRoom?address=Thanh Khe">Thanh Khe</a>
							<ul>
								<li><a href = "findRoom?address=An Khe">An Khe</a></li>
							 	<li><a href = "findRoom?address=Chinh Gian">Chinh Gian</a></li>
							 	<li><a href = "findRoom?address=Hoa Khe">Hoa Khe</a></li>
							 	<li><a href = "findRoom?address=Tam Thuan">Tam Thuan</a></li>
							 	<li><a href = "findRoom?address=Tan Chinh">Tan Chinh</a></li>
							 	<li><a href = "findRoom?address=Thac Gian">Thac Gian</a></li>
							 	<li><a href = "findRoom?address=Thanh Khe Dong">Thanh Khe Dong</a></li>
							 	<li><a href = "findRoom?address=Thanh Khe Tay">Thanh Khe Tay</a></li>
							 	<li><a href = "findRoom?address=Vinh Trung">Vinh Trung</a></li>
							 	<li><a href = "findRoom?address=Xuan Ha">Xuan Ha</a></li>
							</ul>
						</li>
						<li><a href = "findRoom?address=Hoa Vang">Hoa Vang</a>
							<ul>
							 	<li><a href = "findRoom?address=Hoa Bac">Hoa Bac</a></li>
							 	<li><a href = "findRoom?address=Hoa Chau">Hoa Chau</a></li>
							 	<li><a href = "findRoom?address=Hoa Lien">Hoa Lien</a></li>
							 	<li><a href = "findRoom?address=Hoa Nhon">Hoa Nhon</a></li>
							 	<li><a href = "findRoom?address=Hoa Ninh">Hoa Ninh</a></li>
							 	<li><a href = "findRoom?address=Hoa Phong">Hoa Phong</a></li>
							 	<li><a href = "findRoom?address=Hoa Phu">Hoa Phu</a></li>
							 	<li><a href = "findRoom?address=Hoa Phuoc">Hoa Phuoc</a></li>
							 	<li><a href = "findRoom?address=Hoa Son">Hoa Son</a></li>
							 	<li><a href = "findRoom?address=Hoa Tien">Hoa Tien</a></li>
							</ul>
						</li>
						<li><a href = "findRoom?address=Son Tra">Son Tra</a>
							<ul>
								<li><a href = "findRoom?address=An Hai Dong">An Hai Dong</a></li>
							 	<li><a href = "findRoom?address=An Hai Tay">An Hai Tay</a></li>
							 	<li><a href = "findRoom?address=An Hai Bac">An Hai Bac</a></li>
							 	<li><a href = "findRoom?address=Man Thai">Man Thai</a></li>
							 	<li><a href = "findRoom?address=Nai Hien Dong">Nai Hien Dong</a></li>
							 	<li><a href = "findRoom?address=Phuoc My">Phuoc My</a></li>
							 	<li><a href = "findRoom?address=Tho Quang">Tho Quang</a></li>
							</ul>
						</li>
						<li><a href = "findRoom?address=Lien Chieu">Lien Chieu</a>
							<ul>
								<li><a href = "findRoom?address=Hoa Hiep Bac">Hoa Hiep Bac</a></li>
							 	<li><a href = "findRoom?address=Hoa Hiep Nam">Hoa Hiep Nam</a></li>
							 	<li><a href = "findRoom?address=Hoa Khanh Bac">Hoa Khanh Bac</a></li>
							 	<li><a href = "findRoom?address=Hoa Khanh Nam">Hoa Khanh Nam</a></li>
							 	<li><a href = "findRoom?address=Hoa Minh">Hoa Minh</a></li>
							</ul>
						</li>
						<li><a href = "findRoom?address=Ngu Hanh Son">Ngu Hanh Son</a>
							<ul>
								<li><a href = "findRoom?address=Hoa Hai">Hoa Hai</a></li>
							 	<li><a href = "findRoom?address=Hoa Quy">Hoa Quy</a></li>
							 	<li><a href = "findRoom?address=Khue My">Khue My</a></li>
							 	<li><a href = "findRoom?address=My An">My An</a></li>
							</ul>
						</li>
						</ul>	
				</li>
				
				<li><a href= "#">View By Price</a>  <!-- Find room by price -->
					<ul>
						<li><a href = "findByPrice?price=0-500000">Lower 500k</a></li>
						<li><a href = "findByPrice?price=500000-1000000">From 500k to 1m</a></li>
						<li><a href = "findByPrice?price=1000000-1500000">From 1m to 1m5</a></li>
						<li><a href = "findByPrice?price=1500000-2000000">From 1m5 to 2m</a></li>
						<li><a href = "findByPrice?price=2000000-2500000">From 2m to 2m5</a></li>
						<li><a href = "findByPrice?price=2500000-3000000">From 2m5 to 3m</a></li>
						<li><a href = "findByPrice?price=3000000-999999999">Upper 3m</a></li>
					</ul>
				</li>
				<li><a href = "listContractUser">Contract List</a></li>
				<li><a href= "#">Account</a>
					<ul>
						<li><a href = "updateUser">Add Information</a></li>
						<li><a href = "changePassword">Change password</a></li>
						<li><a href = "requestHost">Request Host</a></li>
					</ul>
				</li>
				<li style ="float: right"><a href = "logout">Log Out</a></li>
			</ul>
		</div>
		
			<div id="view_form">
				<form id =formsearch action="${pageContext.request.contextPath}/searchRoom">
					<div id = "search">
						<div id = "left">
							<input type="text" name="search" id = "find" class="form-control"placeholder="Enter id room need find" required autofocus">
						</div>
						<div id= "right">
							<input type=submit id= "submit" value="Search">
						</div>
					</div>
			</form>
			</div>
				<div id="list">
					<c:forEach items="${roomList}" var="room" >
						<div id="room">
							<a id="roomLink" href="viewRoom?id=${room.idRoom}">
							<div id="image">
								<img src="data:image/jpeg;base64,${room.stringImage}" width="170px" height="220px"/>
							</div>
							<div id="info">
								<br>Id room: ${room.idRoom}
								<br>Address: ${room.address}
								<br>Total Room: ${room.totalRoom} 
								<br>Area: ${room.area} m2 
								<br>Max People: ${room.maxPeople} 
								<br>Price: ${room.price} vietnamdong
							</div>
							</a>
						</div> 
					</c:forEach>
			</div>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			$(".menu li").hover(function(){
				$(this).find("ul:first").slideDown(400);
			}, function(){
				$(this).find("ul:first").hide(200);
			});
		});
	</script>
</body>

</html>