<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.msita.hostel.bo.Room"%>
    <%@page import="com.msita.hostel.bo.User"%>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="dist/js/datepickeer.min.js"></script>
    <script src="dist/js/i18n/datepicker.en.js"></script>
<meta charset="ISO-8859-1">
<style type="text/css">
	body{
		width: 600px;
		min-height: 500px;
	}
	#main {
		text-align: center;
	}
	#idRoom{
		display: none;
	}
	#info{
		width: 100%;
		margin-left: 50px;
		margin-top: 10px;
		background: blue;
		padding-left: 10px;
		text-align: left;
		font-size: 16px;
		float: left;
	}
	#host_info{	
		color: #ccc;
		
	}
	#room_info{
		color: white;
	}
	#input_info{
		margin-top: 20px;
		margin-left: 50px;
		text-align: left;
		width: 500px;
		min-height: 100px;
	}
	.btn{
		background: blue;
		color: white;
		margin-top: 20px;
	}
</style>
<title>Book Room</title>
</head>
<body>
	<form><a href = "home" id="home"><img src="icons\homeicon.jpg"/></a></form>
	<div id = "main">
		<form method="POST" action="${pageContext.request.contextPath}/viewRoom">
		<div id="image">
			<img src="data:image/jpeg;base64,${room.stringImage}" width="170px" height="220px"/>
		</div>
		<div id="info">
			<input type="text" id="idRoom" name="idRoom" class="form-control" value = "${room.idRoom }" placeholder="idRoom" required autofocus readonly>
			<div id="room_info">
				<h4>Information of host: </h4>
				Address: ${room.address} <br>
				Total Room: ${room.totalRoom} <br>
				Area: ${room.area} m2 <br>
				Max People: ${room.maxPeople} <br>
				Price: ${room.price} vietnamdong <br>
			</div> 
			<div id="host_info">
				<h4>Information of host: </h4>
				Name: ${host.firstName} ${host.lastName} <br>
				Phone: ${host.phone} <br>
				Address: ${host.address} <br>
			</div>
		</div>
		<div id="input_info">
			Amount of room:
			<input type="number" min=1 max="${room.totalRoom }" name="amount" class="form-control" placeholder="mount" required autofocus>
			Time you arrive to live:
			<input type="date" id ="timeArrive" name="timeArrive" class ="form-control datepicker-here" data-position="right top" placeholder="Enter date arrive" required autofocus>
			Time you leave:
			<input type="date" id ="timeOut" name="timeOut" class ="form-control" placeholder="Enter date go out" required autofocus>
		</div>
		<button type="submit" class="btn">Book</button>
	</form>
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
		document.getElementById("timeArrive").setAttribute("min", today);
		let dateArrive
        $("#timeArrive").change(function(){
        	dateArrive = $("#timeArrive").val();
            let minDate = new Date(dateArrive);
            console.log(dateArrive);
            document.getElementById("timeOut").setAttribute("min", dateArrive);
            document.getElementById("listingDateClose").setAttribute("value", dateArrive);
        });
	</script>
</body>
</html>