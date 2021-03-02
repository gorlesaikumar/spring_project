<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check-out</title>

<style>
.headerclass{
                background-image :url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzJxyvDj2Qlc6mZoNpdephGzNv5rPDBxgmxA&usqp=CAU");
                text-align: center;
                padding-top:5px;
                font-size: 25px;
                               
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


.Content{
padding-top :100px;
 margin-left: 532px;
}
.link{
margin-left: 132px;
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
            
            
            
            <form action="logout"><button class="cart1" type="submit" style="border-radius: 10px; background-color: orange; padding: 3px 15px; margin-left: 15px;" >Logout</button>           
            </form></form>
            
                
</div>

<div class="Content"> 
<h2>Your Order is placed, thankyou for shopping</h2>
<div class="link">
Click here to <a href="Homepage1.jsp">Contine shopping</a></div>


</div>


</body>
</html>