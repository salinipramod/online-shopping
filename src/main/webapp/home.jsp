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
  text-align:center;
}
}
</style>
</head>
<body>
<div class="center" >
<h1 align="center">ShopZone </h1>
<div style="margin: 0 auto; width:370px;" >

<button  onclick="window.location='adminAddProduct.jsp'" class="button button2"> Add Product</button>
<button  onclick="window.location='products.jsp'" class="button button2"> Product Detail</button>
<button onclick="window.location='index.jsp'" class="button button2" >Logout</button>
</div>
</div>
<div style="margin: 5 auto; width:370px;" >
<div class="left">
<input  style ="width :640px" type="text" placeholder="Search items.." name="searchBar"  
value="search" class="searchClass"  id="searchId"><br>
</div>
<table class="separated">
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
</table>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
