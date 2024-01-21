package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDao {
	

public static boolean validate(AdminBean bean){  
	System.out.println("Entered into AdminDao.validate method..");
boolean status=false;  
Connection con = null;
try{  
con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement(  
    "select * from employee where emp_name=? and password=?");  
  
ps.setString(1,bean.getUsername());  
ps.setString(2, bean.getPassword());  
System.out.println("Inside AdminDao.validate method with ps : "+ps);
ResultSet rs=ps.executeQuery();  
System.out.println("Inside AdminDao.validate method with ResultSet : "+rs);
status=rs.next();  
              
}catch(Exception e){}  
finally {
	try {
		con.close();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
}
  
System.out.println("Exited AdminDao.validate method with status : "+status);
return status;  

  
}

}  
