<%@page import="bean.RegistrationDao"%>  
<jsp:useBean id="obj" class="bean.RegisterBean"/> 
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=RegistrationDao.addUser(obj);  
if(status){  
out.println("User Registered Successfully");  
session.setAttribute("session","TRUE"); 
%>  
<jsp:include page="login.jsp"></jsp:include>  
<% 
}  
else  
{  
out.print("Sorry, Registeration failed");  
%>  
<jsp:include page="register.jsp"></jsp:include>  
<%  
}  
%>  