<!DOCTYPE html>
<html>
<head>
<style>
.center {
  margin-left: 22%;
}
.button {
  border: none;
  color: white;
  padding: 4px 6px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {background-color: #04AA6D;} /* Green */
.button2 {background-color: #008CBA;} /* Blue */
</style>
</head>
<body>
<div class="center">
<label>ShopZone</label>
<div style="margin: 0 auto; width:370px;" >
<img style="margin: 0 auto; width:21px;" src="logo.jpg" alt="Avatar" class="avatar">
<button  onclick="window.location='cart.jsp'" class="button button2" >Add to Cart</button>
<button onclick="window.location='login.jsp'" class="button button2" >Login</button>
<button onclick="window.location='register.jsp'" class="button button1" >Register</button>
</div>
<!--  div id="login"><jsp:include page="login.jsp"/></div> -->
</div>
<div class="center">
<input  style ="width :640px" type="text" placeholder="Search items.." name="searchBar"  
value="search" class="searchClass"  id="searchId">

</div>

<table class="center">
<tr>
<td>
<img style="margin: 0 auto; width:80px;" src="logo.jpg" alt="Avatar" class="avatar">
</td>
<td> 
<p> this is book about something...</p>
</td>
<td>
<button> Add</button>
</td>
</tr>
</table>

</body>
</html>
