<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<style>
            .headerclass{
                background-image :url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzJxyvDj2Qlc6mZoNpdephGzNv5rPDBxgmxA&usqp=CAU");
                text-align: center;
                padding-top:5px;
                font-size: 25px;
                          
                
            }
            .navbar{
                text-align: center;
                background-color:white;
                
                overflow: hidden;
                font-size: 24px;
                
            }
            .headermenu{
                float: left;
                overflow: hidden;
                color:white;
                font-family: Georgia,'Times New Roman',Times, serif;
               
                
            }
            .search{
            float: left;
            margin-left: 150px;
            
            }
            .cart{
                text-align: right;
                text-decoration: white;
                float: right;
                display: flex;
                margin-left: 15px;

            }
            .footer{
               position: relative;
               width: 100%;
               background-color:rgb(94, 128, 0);
               left: 0px;
               bottom: 0px;
               text-align: center;
              
            }
            .about ul{
                text-align: center;
                margin-left:130px;
                width:25%;
	            float:left;
                list-style: none;
            }
            .careers ul{
                text-align: center;
                width:25%;
	            float:left;
	            
	            color:white;
                list-style: none;
            }
            .offer ul{
                text-align: center;
                width:25%;
	            float:left;
                list-style: none;
            }
            .mySlides{
               padding-top: 7%;
               
               margin-left: 24%;
               
               
            }
            A {text-decoration: none;
            color: black;}
            .active{
               cursor: pointer; 
            }
            .loginstyle{
            margin-left: 15px;
            }
            /* .content1
              {
                display: inline-block;
                
                margin: 18px;
                margin-left: 20px;
                text-align: center;
                padding-top: 20px;
                padding-bottom: 100px;
               } */
            .content
              {
                
                display: flex;
                
                margin: 18px;
                margin-left: 20px;
                text-align: center;
                padding-top: 20px;
                padding-bottom: 0px;
               }
          /* .image1{
           margin-right: 38px;
           margin-left: 92px;
           
            } */
           .body{
           display: flex;
           }
           .quote{
           padding-top: 100px;
           margin-left: 250px;
           margin-right: 20px;
           }
           .quote{
          padding: 103px;
          margin-right: 164px;
          } 
          .btn{
          padding: 0px 0px;
          display: flex;
          margin-left: 130px;
          cursor: pointer;
          } 
          
          h2.head{
           margin-left: 260px;
           display: inline-block;
          }
          .types{
          margin-left: -55px;
          padding-bottom: 130px;
          }
          
          
         
        </style>
<meta charset="ISO-8859-1">
<title>Homepage</title>


</head>
<body>
       


        
        <header>
            <div class="headerclass">
                <h2>M buy</h2>
            </div>
        </header>
            
            
        <div class="navbar">
           
            <div class="headermenu">
            
        
        <form action="listing">
               
               
              
                <button class = "active" type="submit" value="vegetable" name="market">Vegetables</button>
                <button class = "active" type="submit" value="fruit" name="market">fruits</button>
                <button class = "active" type="submit" value="milk" name="market">MilkProducts</button>
                <button class = "active" type="submit" value="groceries" name="market">Groceries</button></form>
                
            </div>
            <div class="search">
            <form action="PDP">
            <input type="text" placeholder="search" name="item">
            <button type="submit" value="${p.id}" name="item"  >search</button>
            </form>
            </div>
            <div class="cart">
            <form action="cartpage"><button class="active" type="submit" >Cart</button>           
            </form>
            <form action="logout"><button class="active" type="submit" style="border-radius: 10px; background-color: orange; padding: 3px 15px; margin-left: 15px;" >Logout</button>           
            </form>
                
                
               
                
                
            </div>
        </div>
  <div class="body">      
        
  <div class="container">
  
  <img class="mySlides" src="https://i.ytimg.com/vi/T-k3YKc_Oz4/maxresdefault.jpg" style="height: 350px">
  <img class="mySlides" src="https://i.pinimg.com/originals/d1/f0/8b/d1f08b8a994bc0058b58e42bd3c819c7.jpg" style="height: 350px">
  <img class="mySlides" src="https://i.ytimg.com/vi/-U23XgEkZf0/maxresdefault.jpg" style="height: 350px">
   
  </div>
  
 <div class="quote">
 <h2 >When it comes to food,
          its of course a fancy word for your mom.</h2>
   </div>
   </div>
   
<script>
var myIndex = 0;
carousel();

function carousel() 
  {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) 
  {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 3000); // Change image every 3 seconds
  }
</script>




             
           
        
        
        <div class=" content">
        
        
       
        
        <form action="listing"><button class="btn" type="submit" value="vegetable" name="market"><img class="image1" src="https://stopandshop.gofoodpng.biz/wp-content/uploads/2018/11/CARROTS.jpg "style="height: 200px" width="200px"> </button></form>
        
        <form action="listing"><button class="btn" type="submit" value="fruit" name="market"><img class="image1" src="https://www.prodailybazaar.com/wp-content/uploads/2020/05/206.Oranges.jpg "style="height: 200px" width="200px"></button></form>
        
        <form action="listing"><button class="btn" type="submit" value="milk" name="market"><img class="image1" src="https://awesomedairy.com/wp-content/uploads/2018/10/Motherdairy-UHT-1Ltr-New.jpg "style="height: 200px" width="200px"></button></form>
        
        <form action="listing"><button class="btn" type="submit" value="groceries" name="market"><img class="image1" src="https://www.shopickr.com/wp-content/uploads/2019/07/icon_cat_16_v_3_500_1553422381.jpg " style="height: 200px" width="200px"></button></form>
        
      
            
        </div>
        <div class="types">
        <h2 class="head">Vegetables</h2>
        <h2 class="head">Fruits</h2>
        <h2 class="head">Milk</h2>
        <h2 class="head">Groceries</h2>
        </div>
        <!-- <div class="content1">
        <figure>
        <a href="#"><img class="image1" src="https://images-na.ssl-images-amazon.com/images/I/616PXhYj8iL._SL1000_.jpg "style="height: 200px" width="200px"></a> 
        <a href="#"><img class="image1" src="https://images-na.ssl-images-amazon.com/images/I/616PXhYj8iL._SL1000_.jpg "style="height: 200px" width="200px"></a>
        <a href="#"><img class="image1" src="https://images-na.ssl-images-amazon.com/images/I/616PXhYj8iL._SL1000_.jpg "style="height: 200px" width="200px"></a>
        <a href="#"><img class="image1" src="https://images-na.ssl-images-amazon.com/images/I/616PXhYj8iL._SL1000_.jpg " style="height: 200px" width="200px"></a>       
        </figure>
            
        </div> -->
        
        
        
</body>
<footer>
 <div class="footer">
            <div class="about">
            <ul>
                <li><a href="#who">Who we are</a></li>
                <li><a href="#testmonials">testimonials</a></li>
                <li><a href="#disclosures">Disclosures</a></li>
            </ul>
            </div>
            <div class="careers">
                <ul>
                <li><a href="#careers">Careers</a></li>
                
                <li><a href="#sell">Sell</a></li>
                
                <li><a href="#guide">Guide</a></li>
            </ul>
            </div>
            <div class="offer">
                <ul>
               <li><a href="#new offers">New Offers</a></li>
                
                <li><a href="#redeem"> Redeem here</a></li>
                
                <li><a href="#invite">Invite friends</a></li>
            </ul> 
            </div>
        </div>
    </footer>
</html>