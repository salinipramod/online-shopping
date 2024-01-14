package bean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
	
	
	public static  List<ProductBean> getProduct() {
		Connection con = null;
		con=getCon();
		List<ProductBean> productList = new ArrayList<>();
		try {
			PreparedStatement ps=con.prepareStatement(  
				    "select * from product");
			ResultSet rs=ps.executeQuery(); 
			while(rs.next()) {
				ProductBean productBean =new ProductBean();
				productBean.setProductid(rs.getInt(1));
				productBean.setProductname(rs.getString(2));
				productBean.setProductdescription(rs.getString(3));
				productBean.setProductprice(rs.getString(4));
				productBean.setProductcategor(rs.getString(5));
				productList.add(productBean);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return productList;
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

