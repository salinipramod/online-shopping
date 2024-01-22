<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>



<title>Add New Products</title>
</head>

<h2>New Product Adding details</h2><br>
<body>
<form action ="addProduct.jsp" method="post">
			<table style="with: 50%">
				<tr>
					<td>Product Name</td>
					<td><input type="text" name=productName /></td>
				</tr>
				<tr>
					<td>Product Description</td>
					<td><input type="text" name="productDescription" /></td>
				</tr>
				<tr>
					<td>Product Price</td>
					<td><input type="text" name="productPrice" /></td>
				</tr>
					<tr>
					<td>Product Category</td>
					<td><input type="text" name="productCategory" /></td>
				</tr>
				</table>
			<input type="submit" value="Submit" /></form>

</body>
</html>