package jspservlet.dao;

import java.util.ArrayList;
import java.util.List;

import jspservlet.vo.Cart;
import jspservlet.vo.Order;
import jspservlet.vo.Product;

public interface OrderDAO {
	public ArrayList<Cart> query(String userId) throws Exception;
	public int add(Cart cart) throws Exception;
	public void addOrder(Order order) throws Exception;
	public ArrayList<Order> quetyOrder(String username) throws Exception;
	public int getCurrentIndex();
	public void updateCurrentIndex();
}
