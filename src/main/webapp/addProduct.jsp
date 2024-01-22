<%@page import="bean.ProductDao"%>  
<jsp:useBean id="u" class="bean.ProductBean"></jsp:useBean>    
<jsp:setProperty property="*" name="u"/>

  <%  
boolean status=ProductDao.addProduct(u);
if(status){  
out.println("Product added Successfully");  
session.setAttribute("session","TRUE"); 
%>  
<jsp:include page="home.jsp"></jsp:include>  
<% 
}  
else  
{  
out.print("Sorry, order not conformed ");  
%>  
<jsp:include page="adminAddProduct.jsp"></jsp:include>  
<%  
}  
%>  