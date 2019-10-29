<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.msita.hostel.bo.Room"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Update Your Room</title>
</head>
<body>
	<form><a href = "hostPage" id="hostPage"><img src="icons\homeicon.jpg"/></a></form>
	<h2 style="text-align:center; color:blue;">UPDATE INFORMATION OF ROOM</h2>
	<form method="POST" action="${pageContext.request.contextPath}/updateRoom" enctype="multipart/form-data">
         <table>
         	<tr>
               <td>IdRoom</td>
               <td><input type="text" name="idRoom" class="form-control" value = "${room.idRoom }" placeholder="idRoom" required autofocus readonly></td>
            </tr>
            <tr>
               <td>IdAddress</td>
               <td><input type="text" name="idAddress" class="form-control" value = "${room.idAddress }" placeholder="Road" required autofocus></td>
            </tr>
            <tr>
               <td>Road</td>
               <td><input type="text" name="road" class="form-control" value = "${room.road }" placeholder="Road" required autofocus></td>
            </tr>
            <tr>
               <td>TotalRoom</td>
               <td><input type="number" name="totalRoom" class="form-control" value = "${room.totalRoom }" placeholder="TotalRoom" required autofocus></td>
            </tr>
            <tr>
               <td>Area</td>
               <td><input type="number" name="area" class="form-control" value = "${room.area }" placeholder="Area" required autofocus></td>
            </tr>
            <tr>
               <td>Max People</td>
               <td><input type="number" name="maxPeople" class="form-control" value = "${room.maxPeople }" placeholder="Max People" required autofocus></td>
            </tr>
             <tr>
               <td>Price</td>
               <td><input type="number" name="price" class="form-control" value = "${room.price }"  placeholder="Price" required autofocus></td>
            </tr>
            <tr>
            	<td>Image</td>
            	<td><input type="file" name="image" size="50" placeholder="Upload Your Image"/></td>
            </tr>
            <tr>
               <td colspan="2">                   
                   <input class="btn btn-lg btn-primary btn-block" type="submit" value="Submit"/>
               </td>
            </tr>
         </table>
      </form>
</body>
</html>