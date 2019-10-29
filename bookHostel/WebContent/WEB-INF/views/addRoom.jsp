<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Add your room</title>
<style>
	.box{
		width: 220px;
		margin: 0px;
	}
	.container{
		float: left;
		height: 35px;
	}
</style>
</head>
<body>
	<form><a href = "hostPage" id="hostPage"><img src="icons\homeicon.jpg"/></a></form>
	<h2 style="text-align:center; color:blue;">ADD NEW ROOM</h2>
	
	<form method="POST" action="${pageContext.request.contextPath}/addRoom" enctype="multipart/form-data">
         <table>
            <tr>
               <td>Address:</td>
               <td><div class="container">
					  <div class="row">
					    
					      <select class="form-control box" name ="address">
					        <option value="1">Binh Thuan, Hai Chau</option>
					        <option value="2">Hai Chau I, Hai Chau</option>
					        <option value="3">Hai Chau II, Hai Chau</option>
					        <option value="4">Binh Chau, Hai Chau</option>
					        <option value="5">Hoa Cuong Bac, Hai Chau</option>
					        <option value="6">Hoa Cuong Nam, Hai Chau</option>
					        <option value="7">Hoa Thuan Dong, Hai Chau</option>
					        <option value="8">Hoa Thuan Tay, Hai Chau</option>
					        <option value="9">Nam Duong, Hai Chau</option>
					        <option value="10">Phuoc Ninh, Hai Chau</option>
					        <option value="11">Thach Thang, Hai Chau</option>
					        <option value="12">Thuan Phuoc, Hai Chau</option>
					        <option value="13">Thanh Binh, Hai Chau</option>
					        <option value="14">Hoa An, Cam Le</option>
					        <option value="15">Hoa Phat, Cam Le</option>
					        <option value="16">Hoa Tho Dong, Cam Le</option>
					        <option value="17">Hoa Tho Tay, Cam Le</option>
					        <option value="18">Hoa Xuan, Cam Le</option>
					        <option value="19">Khue Trung, Cam Le</option>
					        <option value="20">An Khe, Thanh Khe</option>
					        <option value="21">Chinh Gian, Thanh Khe</option>
					        <option value="22">Hoa Khe, Thanh Khe</option>
					        <option value="23">Tam Thuan, Thanh Khe</option>
					        <option value="24">Tan Chinh, Thanh Khe</option>
					        <option value="25">Thac Gian, Thanh Khe</option>
					        <option value="26">Thanh Khe Dong, Thanh Khe</option>
					        <option value="27">Thanh Khe Tay, Thanh Khe</option>
					        <option value="28">Vinh Trung, Thanh Khe</option>
					        <option value="29">Xuan Ha, Thanh Khe</option>
					        <option value="30">Hoa Bac, Hoa Vang</option>
					        <option value="31">Hoa Chau, Hoa Vang</option>
					        <option value="32">Hoa Nhon, Hoa Vang</option>
					        <option value="33">Hoa Lien, Hoa Vang</option>
					        <option value="34">Hoa Ninh, Hoa Vang</option>
					        <option value="35">Hoa Phong, Hoa Vang</option>
					        <option value="36">Hoa Phu, Hoa Vang</option>
					        <option value="37">Hoa Phuoc, Hoa Vang</option>
					        <option value="38">Hoa Son, Hoa Vang</option>
					        <option value="39">Hoa Tien, Hoa Vang</option>
					        <option value="40">An Hai Dong, Son Tra</option>
					        <option value="41">An Hai Tay, Son Tra</option>
					        <option value="42">An Hai Bac, Son Tra</option>
					        <option value="43">Man Thai, Son Tra</option>
					        <option value="44">Nai Hien Dong, Son Tra</option>
					        <option value="45">Phuoc My, Son Tra</option>
					        <option value="46">Tho Quang, Son Tra</option>
					        <option value="47">Hoa Hiep Bac, Lien Chieu</option>
					        <option value="48">Hoa Hiep Nam, Lien Chieu</option>
					        <option value="49">Hoa Khanh Bac, Lien Chieu</option>
					        <option value="50">Hoa Khanh Nam, Lien Chieu</option>
					        <option value="51">Hoa Minh, Lien Chieu</option>
					        <option value="52">Hoa Hai, Ngu Hanh Son</option>
					        <option value="53">Hoa Quy, Ngu Hanh Son</option>
					        <option value="54">Khue My, Ngu Hanh Son</option>
					        <option value="55">My An, Ngu Hanh Son</option>
					      </select>
					    </div>
					  </div>
					  <br />
					  <div>
					  </div>
					
					</td>
            </tr>
            <tr>
               <td>Road</td>
               <td><input type="text" name="road" class="form-control" placeholder="Road" required autofocus></td>
            </tr>
            <tr>
               <td>TotalRoom</td>
               <td><input type="number" min=1 name="totalRoom" class="form-control" placeholder="TotalRoom" required autofocus></td>
            </tr>
            <tr>
               <td>Area</td>
               <td><input type="number" min=1 name="area" class="form-control" placeholder="m2" required autofocus></td>
            </tr>
            <tr>
               <td>Max People</td>
               <td><input type="number" min=1 name="maxPeople" class="form-control"  placeholder="Max People" required autofocus></td>
            </tr>
             <tr>
               <td>Price</td>
               <td><input type="number" min=1 name="price" class="form-control"  placeholder="vietnamdong" required autofocus></td> 
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