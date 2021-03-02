<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>


<style>
body{
    background-color: azure;
}
.container{
    width: 200px;
    border: 2px solid black;
    padding: 130px;
    margin-left: 520px;
    margin-top: 118px;
    border-radius: 30px;
    background-color: rgb(204, 255, 230)
}
input{
   padding: 8px 25px;
   border-radius: 10px;
   
   
}
.btn{
border-radius: 5px;
margin-left: 70px;
}
.heading{
margin-left: 35px;
padding-bottom: 5px;
margin-top: -30px;
}

</style>
</head>


<body>
<div class="container">
<h2 class="heading">register here</h2>
<form action="add" method="post" >
<input type="text" name="username" placeholder="Username" required="required"><br><br>
<input type="text" name="phonenumber" placeholder="Phone number" required="required" ><br><br>
<input type="email" name="email" placeholder="Email" required="required"><br><br>
<input type="password" name="password" placeholder="Password" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"><br><br>
<button class="btn" type="submit">SignUp</button>
</form>
</div>
</body>
</html>