package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegistrationDao{
	
	public static boolean addUser(RegisterBean bean) {
		System.out.println("Entered into RegistrationDao.addUser method..");
		boolean status =false;
		try {
			Connection conn = getCon();
			PreparedStatement st;
			PreparedStatement stmt=conn.prepareStatement("insert into employee values(?,?,?,?,?,?)");  
			stmt.setString(1, bean.getUserName());//1 specifies the first parameter in the query  
			stmt.setString(2, bean.getPassword());
			stmt.setString(3, bean.getFirstName());
			stmt.setString(4, bean.getLastName());
			stmt.setString(5, bean.getAddress());
			stmt.setString(6, bean.getContactno());
			System.out.println("Entered into RegistrationDao.addUser statement:"+stmt);
			int i=stmt.executeUpdate(); 
			System.out.println("Entered into RegistrationDao.addUser status:"+i);
			if(i>0) {
				status= true;
			}
			
		} catch (SQLException e) {
			System.out.println("Entered into RegistrationDao.addUser SQLException:"+e.getMessage());
			e.printStackTrace();
		}
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
