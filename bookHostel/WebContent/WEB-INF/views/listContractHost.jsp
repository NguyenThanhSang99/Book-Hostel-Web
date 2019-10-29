<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.msita.hostel.bo.Contract"%>
    <%@page import="com.msita.hostel.bo.User"%>
    <%@page import="com.msita.hostel.dao.UserDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Contract List</title>
<style type="text/css">
	body{
		width: 1000px;
		font-size: 15px;	
	}
	#main{
		margin-left: 100px;
		text-align: center;
		width: 800px;
		min-height: 600px;
		background: yellow;
		
	}
	#list {
		background: green;
		font-size: 20px;
		color: blue;
	}
	#list td {
		clear: left;
		margin: 0px;
		padding-top: 10px;
	}
	#list #contract{
		clear: left;
		background: #fff;
		border-bottom: 1px solid black;
	}
	#list #contract #info{
		clear:left;
		padding-left: 20px;
		padding-top: 10px;
		width:100%;
		min-height: 200px;
		background-image : linear-gradient(120deg,#2ecc71,#9b59b6);
		text-align: left;
		color: white;
	}
	.accept_btn {
		border: none;
	 	background: green;
	 	color: white;
	 	margin-top: 10px;
	 	margin-right: 10px;
	 	clear: left;
	}
	.cancel_btn {
		border: none;
	 	background: red;
	 	color: white;
	 	margin-top: 10px;
	}
	.hide{
		display: none;
	}
</style>
</head>
<body>
	<div id="main">
	<form><a href = "hostPage" id="home"><img src="icons\homeicon.jpg"/></a></form>
	<h2 style="text-align:center; color:GREEN;">LIST CONTRACT OF YOU</h2>
	<div id="list">
		<c:forEach items="${contractList}" var="contract" >
				<form method="POST" action="${pageContext.request.contextPath}/viewContract">
					<div id="contract">
						<div id="info">
							<input type="number" name="idContract" value="${contract.idContract }" class="hide">
							<input type="number" name="idRoom" value="${contract.idRoom }" class="hide">
							<input type="number" name="amount" value="${contract.amount }" class="hide">
							<input type="text" name="status" value="${contract.status }" class="hide">
							<br>Id room: ${contract.idRoom}
			           	 	<br>Time Create contract: ${contract.timeCreate}
			            	<br>Time arrive: ${contract.timeArrive}
			            	<br>Time leave: ${contract.timeOut}
							<br>Total Room: ${contract.amount}
							<br>Status: ${contract.status } <br>
							<a href="viewUser?id=${contract.idUser}">View Booker Information</a>	<br>					
							<button class="btn accept_btn" name="select" value = "accept" type="submit">Accept</button>
							<button class="btn cancel_btn" name="select" value = "cancel" type="submit">Cancel</button>
						</div>
					</div>    
				</form>
			</c:forEach>
	</div>
	</div>
</body>
</html>