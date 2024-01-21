package bean;

import java.time.Instant;

public class ProductBean {

	public ProductBean() {
		super();
	}
	public ProductBean(Integer productId, String productName, String productDescription, String productPrice,
			String productCategory) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productDescription = productDescription;
		this.productPrice = productPrice;
		this.productCategory = productCategory;
	}
	Integer productId;
	String productName;
	String productDescription;
	String productPrice;
	String productCategory;
	public Integer getProductid() {
		return productId;
	}
	public void setProductid(Integer productid) {
		this.productId = productid;
	}
	public String getProductname() {
		return productName;
	}
	public void setProductname(String productname) {
		this.productName = productname;
	}
	public String getProductdescription() {
		return productDescription;
	}
	public void setProductdescription(String productdescription) {
		this.productDescription = productdescription;
	}
	public String getProductprice() {
		return productPrice;
	}
	public void setProductprice(String productprice) {
		this.productPrice = productprice;
	}
	public String getProductcategor() {
		return productCategory;
	}
	public void setProductcategor(String productcategor) {
		this.productCategory = productCategory;
	}
	public Instant getPurchaseDate() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
