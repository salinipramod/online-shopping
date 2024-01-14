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
    out.println(pId +pName +pDes +pPrice+pCat);
    %>
</body>
</html>