<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Description</title>
<style >
.headerclass{
                background-image :url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzJxyvDj2Qlc6mZoNpdephGzNv5rPDBxgmxA&usqp=CAU");
                text-align: center;
                padding-top:5px;
                font-size: 25px;
                               
            }
.products{
        display: flex;
        margin-left: 420px;
        padding-top: 50px;'
}
.content{
  margin-left: 65px;
  padding-top: 60px;
}
.btn{

padding-top: 30px;

}
.name{

}
.price{

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
       <c:forEach var="h" items="${prod}" varStatus="status">
       
               <div class="image"><img src="data:image/jpg;base64,${h.base64}" style="height: 300px" width="300px" /></div>
               <div class="content">
               
               <div class="name">
               <h2>${h.name}</h2>
               </div>
               <p class="describe">${h.description}</p>
               <div class="price">
               <label> price : ${h.price}/- <label>
               </div>
               
               <div class="btn">
               <form action="cart">
               <button type="submit" name="items" value="${h.id}" style="border-radius: 30px; background-color: #ff5c33; height: 30px;">Add to cart</button></form>
               </div>
               
               </div>
               </c:forEach>
               
               

				</div>
			    
			  

			
		
	

	


</body>
</html>