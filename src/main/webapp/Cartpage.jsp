<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cartpage</title>
<style>
.headerclass{
                background-image :url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzJxyvDj2Qlc6mZoNpdephGzNv5rPDBxgmxA&usqp=CAU");
                text-align: center;
                padding-top:5px;
                font-size: 25px;
                               
            }
#products th {
 padding: 15px;
  text-align: center;
  background-color: #4CAF50;
  color: white;
}
#products td {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
    
}

#products{
margin-left: 450px;
    border: 1px solid;
}
.menu
{
padding-bottom: 45px;
}

.cart1{
                text-align: right;
                text-decoration: white;
                float: right;
                display: flex;
                margin-left: 15px;

            }

</style>
</head>
<body>
<header>
        <div class="headerclass">
                <h2>M buy</h2>
        </div>
</header>
<div class="menu">
<form action="listing">
              
                <button class = "active" type="submit" value="vegetable" name="market">Vegetables</button>
                <button class = "active" type="submit" value="fruit" name="market">fruits</button>
                <button class = "active" type="submit" value="milk" name="market">MilkProducts</button>
                <button class = "active" type="submit" value="groceries" name="market">Groceries</button>
                <a  class="cart1" href="Homepage.jsp">Home</a>
            
            
            
            
            
                
</div>



<div class="content">
				<c:forEach var="p" items="${Productlist}" varStatus="status">
				<div class="cart"><table id="products"><tr>
    <th>Product Image</th>
    <th>product id</th>
    <th>Product name</th>
    <th>Product price</th>
     <th>Click</th>
      <th>Click</th>
    
  </tr><tr><td><img src="data:image/jpg;base64,${h.base64}" style="height: 50px" width="50px" /></td>
				                             <td>${p.id}</td>
				                             <td>${p.name}</td>
				                             <td>${p.price}</td>
				                             <td> <form action="remove"> <button type="submit" name="items" value="${p.name}">Remove</button>
				                             
				                             </form></td>
				                             <td> <a href="Checkout.jsp">Checkout</a></td>
				                             
				
				
				
				
				</tr></table> </div>		</c:forEach></div>
</body>
</html>