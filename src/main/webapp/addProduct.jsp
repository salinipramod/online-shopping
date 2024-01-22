<%@page import="bean.ProductDao"%>  
<jsp:useBean id="obj" class="bean.ProductBean"/> 
<jsp:setProperty property="*" name="obj"/>  
  <%  
boolean status=ProductDao.addProduct(obj);
if(status){  
out.println("User order Successfully");  
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