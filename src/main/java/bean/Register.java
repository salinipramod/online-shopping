package bean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register extends HttpServlet{

	private static final long serialVersionUID = 1L;
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		
		if(first_name.isEmpty() || last_name.isEmpty() || username.isEmpty() || 
				password.isEmpty() || address.isEmpty() || contact.isEmpty())
		{
			RequestDispatcher req = request.getRequestDispatcher("register.jsp");
			req.include(request, response);
		}
		else
		{
			Connection conn = ConnectionProvider.getCon();
			PreparedStatement st;
			try {
				PreparedStatement stmt=conn.prepareStatement("insert into employee values(?,?,?,?,?,?)");  
				stmt.setString(1, username);//1 specifies the first parameter in the query  
				stmt.setString(2,password);
				stmt.setString(3,first_name);
				stmt.setString(4,last_name);
				stmt.setString(5,address);
				stmt.setString(6,contact);
				  
				int i=stmt.executeUpdate(); 
				RequestDispatcher req = request.getRequestDispatcher("welcome.jsp");
				req.forward(request, response);
				
				int m=stmt.executeUpdate(); 
				RequestDispatcher requ = request.getRequestDispatcher("login.jsp");
				req.forward(request, response);
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			 
			 
		}
	}
}
