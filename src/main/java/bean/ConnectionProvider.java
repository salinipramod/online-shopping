package bean;  
import java.sql.*;  
import static bean.Provider.*;  
  
public class ConnectionProvider {  
private static Connection con=null;  
static{  
try{  
Class.forName(DRIVER);  
con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
}catch(Exception e){}  
}  
  
public static Connection getCon(){ 
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