package bean;  
import java.sql.*;

import bean.LoginBean;  
public class LoginDao {  
  
public static boolean validate(LoginBean bean){  
	System.out.println("Entered into LoginDao.validate method..");
boolean status=false;  
Connection con = null;
try{  
con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement(  
    "select * from employee where emp_name=? and password=?");  
  
ps.setString(1,bean.getUserName());  
ps.setString(2, bean.getPassword());  
System.out.println("Inside LoginDao.validate method with ps : "+ps);
ResultSet rs=ps.executeQuery();  
System.out.println("Inside LoginDao.validate method with ResultSet : "+rs);
status=rs.next();  
              
}catch(Exception e){}  
finally {
	try {
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
  
System.out.println("Exited LoginDao.validate method with status : "+status);
return status;  
  
}  
}  