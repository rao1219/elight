package jspservlet.vo;

import java.util.ArrayList;

public class ItemCollection {
	private String username;
	private ArrayList<Product> myCollectionList;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public ArrayList<Product> getMyCollectionList() {
		return myCollectionList;
	}
	public void setMyCollectionList(ArrayList<Product> myCollectionList) {
		this.myCollectionList = myCollectionList;
	}
	
}
