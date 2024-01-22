<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
//String id = request.getParameter("userid");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "myDb";
String userid = "root";
String password = "salinipramod";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<h1>List of Products available</h1>

<table border="1" id="myTable">
<tr>
<td>Product ID</td>
<td>Product Name</td>
<td>Product Description</td>
<td>Product Price</td>
<td>Product Category</td>
<td>Options</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from product";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr onclick="myFunction1(this)">
<td id ="pId" ><%=resultSet.getInt(1) %></td>
<td id ="pName"><%=resultSet.getString(2) %></td>
<td id ="pDes"><%=resultSet.getString(3) %></td>
<td id ="pPrice"><%=resultSet.getString(4) %></td>
<td id ="pCat"><%=resultSet.getString(5) %></td>
<td  ><button class="btnSelect">delete </button></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	
});
function myFunction1(x) {
	
	  var prod= x.rowIndex;
	  console.log(prod);
	  var url = "cart.jsp?pId=";
	  console.log(url+prod);
	  //location.replace(url+prod);
	}
$("#myTable").on('click','.btnSelect',function(){
    // get the current row
    var currentRow=$(this).closest("tr"); 
    
    var col1=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
    var col2=currentRow.find("td:eq(1)").text(); // get current row 2nd TD
    var col3=currentRow.find("td:eq(2)").text(); 
    var col4=currentRow.find("td:eq(3)").text(); 
    var col5=currentRow.find("td:eq(4)").text(); // get current row 3rd TD
    var data=col1+" "+col2+" "+col3+" "+col4+" "+col5;
    
    alert(data);
    var url = "cart.jsp?pId=";
	  console.log(url+col1+"&pName="+col2+"&pDes="+col3+"&pPrice="+col4+"&pCat="+col5);
	  location.replace(url+col1+"&pName="+col2+"&pDes="+col3+"&pPrice="+col4+"&pCat="+col5);
});
</script>
</html>