package bean;  
import java.sql.*;

import bean.LoginBean;  
public class LoginDao {  
  
public static String validate(LoginBean bean){ 
	System.out.println("Entered into LoginDao.validate method..");
String status=null;  
Connection con = null;
try{  
con=getCon();  
              
PreparedStatement ps=con.prepareStatement(  
    "select * from employee where emp_name=? and password=?");  
  
ps.setString(1,bean.getUsername());  
ps.setString(2, bean.getPassword());  
System.out.println("Inside LoginDao.validate method with ps : "+ps);
ResultSet rs=ps.executeQuery();  
System.out.println("Inside Admino.validate method with ResultSet : "+rs);
status=bean.getUsername(); 
              
}catch(Exception e) {}
finally {
	try {
		con.close();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
}
  
System.out.println("Exited LoginDao.validate method with status : "+status);
return status;  
  
}  
private static Connection getCon(){ 
	Connection con = null;
	try{  
		Class.forName("com.mysql.cj.jdbc.Driver");  
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=GMT","root","salinipramod");  
		
		}catch(Exception e){ 
			System.out.println(e);
			}  
	return con;
		} 

}  