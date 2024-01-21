<%@page import="bean.PurchaseDao"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="bean.PurchaseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>
<body>
           <a><b>Cart</b></a>
           <%
    String pId=request.getParameter("pId");
           String pName=request.getParameter("pName");
           String pDes=request.getParameter("pDes");
           String pPrice=request.getParameter("pPrice");
           String pCat=request.getParameter("pCat");
    //out.println(pId +pName +pDes +pPrice+pCat);
    %>
    <table border="1" id="myTable">
<tr>
<td>Product ID</td>
<td>Product Name</td>
<td>Product Description</td>
<td>Product Price</td>
<td>Product Category</td>
<td>Options</td>

</tr>
<tr>
<td><%=pId %></td>
<td><%=pName %></td>
<td><%=pDes %></td>
<td><%=pPrice %></td>
<td><%=pCat %></td>
<td><button class="btnSelect">Buy</button></td>
</tr>
</table>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
$("#myTable").on('click','.btnSelect',function(){
	<%
	String username =null;
	if(session!=null && session.getAttribute("username")!= null ){
		username = (String) session.getAttribute("username");
		//System.out.println("User name :"+username);
	}
	
	%>
	test= '<%=username%>';
	console.log(test);
	
	var product ="<%=pName %>";
	<%@page import="bean.PurchaseBean"%>
	<%@page import="bean.PurchaseDao"%>
	<%
	String userId = username;
	String productId = pId;
	String productName = pName;
	LocalDateTime purchaseDate = LocalDateTime.now();
	PurchaseBean purchaseBean = new PurchaseBean(userId,productId,productName,purchaseDate);
	int status=PurchaseDao.purchase(purchaseBean); 
	if(status>1){  
	out.println("purchase Successfully inserted");  
	}

%>
    alert(test+"! "+product+" purchased successfully..");
    var url = "products.jsp";
    location.replace(url);
});
</script>
</html>