<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>



<title>Add New Products</title>
</head>

<center><h2>New Product Addingdetails</h2></center><br>
<body>
<form action ="addProduct.jsp" method="post">
			<table style="with: 60%">
			
			
				 <tr>
					<td>Product Name</td>
					<td><input type="text" name=productName /></td>
				</tr>
                   <tr>
				   <td>Product description</td>
					<td><input type="text" name=firstName /></td>
                    <tr>
					<td>Product Price</td>
					<td><input type="text" name=firstName /></td>
				</tr>
				   <tr>
				   <td>Product Category</td>
					<td><input type="text" name=firstName /></td>
					</tr>
				 
		     </tr>
				</table>
				<input type="submit" value="Submit" /></form>

</body>
</html>