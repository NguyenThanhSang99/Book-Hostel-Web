<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.msita.hostel.bo.Room"%>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ROOM LIST</title>
</head>
<body>
	<form><a href = "hostPage" id="home"><img src="icons\homeicon.jpg"/></a></form>
	<h2 style="text-align:center; color:GREEN;">LIST ROOM OF YOU</h2>
	<table border="1" cellpadding="5" cellspacing="1">
		<tr>
          <th>ID</th>
          <th>Address</th>
          <th>TotalRoom</th>
          <th>Area</th>
		  <th>MaxPeople</th>
		  <th>Price</th>
		  <th>Image</th>
		  <th>Edit</th>
          <th>Delete</th>
		</tr>
		<c:forEach items="${roomList}" var="room" >
          <tr>
            <td>${room.idRoom}</td>
            <td>${room.address}</td>
            <td>${room.totalRoom}</td>
            <td>${room.area}</td>
			<td>${room.maxPeople}</td>
            <td>${room.price}</td>
            <td><img src="data:image/jpeg;base64,${room.stringImage}" width="170px" height="220px"/></td>
			<td><a href="updateRoom?id=${room.idRoom}"><img alt="" src="icons\editicon.png"></a></td>
			<td><a href="deleteRoom?id=${room.idRoom}"><img alt="" src="icons\deleteIcon.png"></a></td>
          </tr>
		</c:forEach>
    </table>
</body>
</html>