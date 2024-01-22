package bean;

import java.time.LocalDateTime;

public class PurchaseBean {
	public String userId,productId,productName;
	public LocalDateTime purchaseDate;
	public String getUserId() {
		return userId;
	}
	public PurchaseBean(String userId, String productId, String productName, LocalDateTime purchaseDate) {
		super();
		this.userId = userId;
		this.productId = productId;
		this.productName = productName;
		this.purchaseDate = purchaseDate;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public LocalDateTime getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(LocalDateTime purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
}