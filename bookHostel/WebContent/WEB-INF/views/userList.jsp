<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.msita.hostel.bo.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LIST USER</title>
</head>
<body>
	<form><a href = "hostPage" id="home"><img src="icons\homeicon.jpg"/></a></form>
	<h2 style="text-align:center; color:blue;">LIST INFORMATION OF USERS</h2>
	<table border="1" cellpadding="5" cellspacing="1">
		<tr>
          <th>ID</th>
          <th>Full Name</th>
          <th>Gender</th>
          <th>Birthday</th>
		  <th>Address</th>
		  <th>Phone</th>
		  <th>Email</th>
		  <th>Role</th>
		  <th>Is Host</th>
          <th>Delete</th>
		</tr>
		<c:forEach items="${userList}" var="user" >
          <tr>
			<form method="POST" action="${pageContext.request.contextPath}/listRequestHost">
				<input type="number" name = "userId" style = "display : none;">
	            <td>${user.userId}</td>
	            <td>${user.firstName} {user.lastName)</td>
	            <td>${user.gender}</td>
	            <td>${user.birthday}</td>
				<td>${user.address}</td>
	            <td>${user.phone}</td>
				<td>${user.mail}</td>
				<td>${user.role}</td>
				<td></td>
				<td><a href="deleteUser?id=${user.userId}"><img alt="" src="icons\deleteIcon.png"></a></td>
			</form>
          </tr>
		</c:forEach>
    </table>
</body>
</html>