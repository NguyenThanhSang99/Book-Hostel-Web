<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.msita.hostel.bo.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List User Request Host</title>
<style>
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
	#list #big_formt{
		clear: left;
		background: #fff;
		border-bottom: 1px solid black;
	}
	#list #big_form #info{
		clear:left;
		padding-left: 20px;
		padding-top: 10px;
		width:100%;
		min-height: 200px;
		background-image : linear-gradient(120deg,#2ecc71,#9b59b6);
		text-align: left;
		color: white;
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
	<form><a href = "adminPage" id="home"><img src="icons\homeicon.jpg"/></a></form>
	<h2 style="text-align:center; color:GREEN;">LIST REQUEST HOST</h2>
	<div id="list">
		<c:forEach items="${userList }" var="user" >
				<form method="POST" action="${pageContext.request.contextPath}/listRequestHost">
					<div id="big_form">
						<div id="info">
							<input type="number" name="userId" value="${user.userId }" class="hide">
							<br>Id user: ${user.userId }
			           	 	<br>Name: ${user.firstName} ${user.lastName }
			            	<br>Birthday: ${user.birthday }
			            	<br>Gender: ${user.gender }
							<br>Phone: ${user.phone}
							<br>Email: ${user.mail } <br>
							<br>Select:
							<input type="radio" name="select" value="accept" checked> Accept<br>
		                    <input type="radio" name="select" value="cancel"> Cancel<br>
							<button class="btn cancel_btn" type="submit">Ok</button>
						</div>
					</div>    
				</form>
			</c:forEach>
	</div>
	</div>
</body>
</html>