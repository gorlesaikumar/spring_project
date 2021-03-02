<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loginpage</title>

<style>
body{
    background-color: azure;
}
.container{
    
     
    width: 180px;
    border: 2px solid black;
    padding: 92px;
    margin-left: 587px;
    margin-top: 118px;
    border-radius: 30px;
    background-color: rgb(204, 255, 230)
}
input{
   padding: 6px 15px;
   border-radius: 10px;
   
   
}
.btn{
border-radius: 5px;

}
.heading{
margin-left: 35px;
padding-bottom: 5px;
margin-top: -30px;
}
.button{
margin-left: 30px;
}
.btn{
margin-right: 30px;
margin-right: 15px;
}
.warning{
color: red;
margin-left: 668px;
}
</style>

</head>
<body>

<h2 class="warning">${message}</h2>

<div class="container">

<h2 class="heading">login here</h2>
<form action="add2" method="post">
<input type="text" name="username" placeholder="username" required="required"><br><br>
<input type="password" name ="password" placeholder="password" required="required"><br><br>
<div class="button">
<button class="btn" type="submit">login</button> 
<a href="signupform.jsp">SignUp</a>
</div>
</form>


</div>
<div class="box">


</div>
</body>
</html>