<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProductList</title>
<style >
.headerclass{
                background-image :url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzJxyvDj2Qlc6mZoNpdephGzNv5rPDBxgmxA&usqp=CAU");
                text-align: center;
                padding-top:5px;
                font-size: 25px;
                               
            }
 .products{
display: flex;
margin-left: 200px;
padding-left: 45px;
 }
.image
{
display: flex;
margin-left: 45px;
}
.name{
margin-left: 150px;
margin-right: 27px;

}
.content{
    display: flex;
    margin-left: 200px;
    padding-top: 15px;
}
.button{
margin-left: 185px;
margin-right: 0px;

}
.btn{
 display: flex;
    margin-left: 154px;
    padding-top: 14px;
}
.price{
display: flex;
    margin-left: 200px;
    padding-top: 0px;
}
</style>

</head>
<body>
<header>
        <div class="headerclass">
                <h2>M buy</h2>
        </div>
</header>
        
       <div class="products">

				<c:forEach var="p" items="${Productlist}" varStatus="status">
				
				
				
				<div class="image"><img src="data:image/jpg;base64,${p.base64}" style="height: 200px" width="200px" /></div></c:forEach></div>
				
				
				<div class="content">
				<c:forEach var="p" items="${Productlist}" varStatus="status">
				<div class="name"><h2> ${p.name}</h2> </div>		</c:forEach></div>
				
				<div class="price">
				<c:forEach var="p" items="${Productlist}" varStatus="status">
				<div class="name"><label> price : ${p.price}/- <label> </div></c:forEach></div>	
			     
			    
			  <div class="btn">
				<c:forEach var="p" items="${Productlist}" varStatus="status">   
				
    <div class="button">
	<form action="PDP">
	<button type="submit" value="${p.name}" name="item" style="border-radius: 20px; background-color: #ff5c33; width: 70px;" >view</button>
	</form>
	</div>
	</c:forEach>
	</div>

			
		
	
	</div>
	

</body>
</html>