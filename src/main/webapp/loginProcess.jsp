<%@page import="bean.LoginDao"%>  
<jsp:useBean id="bean" class="bean.LoginBean"/> 
<jsp:setProperty property="*" name="bean"/>  
  
<%  
String status=LoginDao.validate(bean);  
if(status!= null){  
out.println("Your successfully logged in");  
session.setAttribute("session","TRUE"); 
session.setAttribute("username", status);

%>  
<jsp:include page="home.jsp"></jsp:include>  
<% 
}  
else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="index.jsp"></jsp:include>  
<%  
}  
%>  