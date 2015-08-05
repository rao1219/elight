package jspservlet.vo;

public class Cart {
	private String productType;		
	private String productPrice;
	private String username;
	private String number;
	private int orderId;
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int i) {
		this.orderId = i;
	}
	
	
	
	
}
