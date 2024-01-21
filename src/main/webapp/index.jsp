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
h2 {
  text-align: centre;
}
</style>
</head>
<body>
<h1 align="center"><img style="margin: 0 auto; width:21px;" src="logo.jpg" alt="Avatar" class="avatar"></h1>

<h1 align="center">Online Shopping Program</h1>
<h2 align="center">ShopZone </h2>

<div style="margin:10 auto; width:270px;" >

<button  onclick="window.location='Admin.jsp'" class="button button2"> Admin</button>
<button onclick="window.location='login.jsp'" class="button button2" >Login</button>
<button onclick="window.location='register.jsp'" class="button button1" >Register</button>
</div>
<div style="margin: 5 auto; width:370px;" >
<div class="left">
<input  style ="width :550px" type="text" placeholder="Search items.." name="searchBar"  
value="search" class="searchClass"  id="searchId"><br>
</div>
<h1 align="center"><img style="margin: 0 auto; width:255px;" src="logo.jpg" alt="Avatar" class="avatar"></h1>
<!--  table class="separated">
<tr>
<td>
<img style="margin: 10 auto; width:30px;" src="logo.jpg" alt="Avatar" class="avatar">
</td>
<div style="margin: 0 auto; width:370px;" >
 <div class="center">
<td>
<p> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Color TV stock...</p>
</td>
<td>
<button> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Add to cart</button>
</td>
</tr>
<tr>
<td>
<img style="margin: 10 auto; width:30px;" src="logo.jpg" alt="Avatar" class="avatar">
</td>
<td> 
<p>  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Speaker stock</p>
</td>
<td>
<button> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Add to cart</button>
</td> 
<tr>
<td>
<img style="margin: 10 auto; width:30px;" src="logo.jpg" alt="Avatar" class="avatar">
</td>
<td> 
<p> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Bed stock</p>
</td>
<td>
<button> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Add to cart</button>
</td> 
<tr>
<td>
<img style="margin: 10 auto; width:30px;" src="logo.jpg" alt="Avatar" class="avatar">
</td>
<td>
<p> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mixer stock</p>
</td>
<td>
<button>  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Add to cart</button>
</div>
</td> 
</tr>
<tr>
<td>
<img style="margin: 10 auto; width:30px;" src="logo.jpg" alt="Avatar" class="avatar">
</td>
<td>
<p> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chair stock</p>
</td>
<td>
<button> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Add to cart</button>
</div>
</td> 
</tr>
</table>-->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
