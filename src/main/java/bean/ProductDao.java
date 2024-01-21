package bean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

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
	
	public static boolean addProduct(ProductBean bean) {
		
		//write code here
	   System.out.println("Entered into addProductDao.addProduct method..");
		boolean status =false;
		try {
			Connection conn = getCon();
			PreparedStatement st;
		PreparedStatement stmt=conn.prepareStatement("insert into Product values(?,?,?,?,?,?)"); 
		 stmt.setInt(1,bean.getProductid ())	;
		    stmt.setString(2, bean.getProductname());
			stmt.setString(3, bean.getProductdescription());
			stmt.setString(4, bean.getProductprice());
			stmt.setString(5, bean.getProductcategor());
			System.out.println("Entered into addProductDao.addproduct statement:"+stmt);
			int i=stmt.executeUpdate(); 
			System.out.println("Entered into addProductDao.addproduc status:"+i);
			if(i>0) {
				status= true;
			}
			} catch (SQLException e) {
			System.out.println("Entered into ProductDao.addUser SQLException:"+e.getMessage());
			e.printStackTrace();
		 }
		return status;
	}
	private static int getProductid() {
		Random r = new Random();
		Integer pId = r.nextInt(100000);
		return pId;
	}
			
	

	private static int getPurchaseId() {
		// TODO Auto-generated method stub
		return 0;
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

