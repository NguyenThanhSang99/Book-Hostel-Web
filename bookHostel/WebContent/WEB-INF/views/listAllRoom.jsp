<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.msita.hostel.bo.Room"%>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>List Room</title>
<style type="text/css">
	body{
		width: 800px;
		min-height: 600px;
		margin : 0px auto;
		text-align: center;
	}
	#list {
		background: white;
		font-size: 20px;
		color: blue;
	}
	#list td {
		clear: left;
		margin: 0px;
		padding-top: 10px;
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
	}
	#list #room #info h3{
		margin: 0px;
		padding: 0px;
		color: white;
		font-size: 15px;
	}
	#roomLink {
		list-style: none;
		border: none;
		text-decoration: none;
	}
</style>
</head>
<body>
	<form><a href = "home" id="home"><img src="icons\homeicon.jpg"/></a></form>
	<h2 style="text-align:center; color:GREEN;">LIST ROOM OF YOU</h2>
	<div id="list">
		<form action="">
		<c:forEach items="${roomList}" var="room" >
			<a id="roomLink" href="viewRoom?id=${room.idRoom}">
				<div id="room">
					<div id="image">
						<img src="data:image/jpeg;base64,${room.stringImage}" width="170px" height="220px"/>
					</div>
					<div id="info">
						<h3>Id room: ${room.idRoom} </h3>
		           	 	<h3>Address: ${room.address} </h3>
		            	<h3>Total Room: ${room.totalRoom}</h3>
		            	<h3>Area: ${room.area} m2</h3>
						<h3>Max People: ${room.maxPeople}</h3>
		            	<h3>Price: ${room.price} vietnamdong</h3>
					</div>
				</div>    
			</a>
			</c:forEach>
		</form>
	</div>
	
</body>
</html>