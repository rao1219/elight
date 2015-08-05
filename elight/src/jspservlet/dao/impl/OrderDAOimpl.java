package jspservlet.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import jspservlet.dao.*;
import jspservlet.db.DBConnect;
import jspservlet.dao.OrderDAO;
import jspservlet.vo.Cart;
import jspservlet.vo.Order;
import jspservlet.vo.Product;

public class OrderDAOimpl implements OrderDAO{


	public ArrayList<Cart> query(String username) throws Exception {
		ArrayList<Cart> orderList = null;
		Cart cart =null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException cnfex) {
			System.err.println("Fail to load JDBC/ODBC!");
			cnfex.printStackTrace();
			
		}

		Connection con = null; 
		Statement stm = null; 
		ResultSet rs = null; 
		DBConnect dbc = null;
		
		try {
			dbc = new DBConnect();
			con = dbc.getConnection();
			stm = con.createStatement();
			String sql = "select * From `cart` Where username='" + username + "'";
			System.out.println(sql);
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				cart = new Cart();
				//cart.setComments(rs.getString("comments"));
				//cart.setDate(rs.getString("date"));
				cart.setNumber(rs.getString("number"));
				//cart.setUserAddress(rs.getString("userAddress"));
				//cart.setUserEmail(rs.getString("userEmail"));
				cart.setUsername(rs.getString("username"));
				//cart.setUserphone(rs.getString("userphone"));
				cart.setProductPrice(rs.getString("productPrice"));
				cart.setProductType(rs.getString("productType"));
				cart.setOrderId(rs.getInt("orderId"));
				
				
				if(rs.isFirst()){
					orderList = new ArrayList<Cart>();
				}
				orderList.add(cart);
			}
		} catch (SQLException sqlex) {
			System.err.println("Cannot connect to the database!");
			sqlex.printStackTrace();
			
		} finally {
			dbc.close();
		}

		return orderList;
	}
	

	public int add(Cart cart) throws Exception {

		int flag = -1;	
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException cnfex) {
			System.err.println("Fail to load JDBC/ODBC!");
			cnfex.printStackTrace();
			
		}

		Connection con = null;
		Statement stm = null;
		DBConnect dbc = null;
		try {
			dbc= new DBConnect();
			con = dbc.getConnection();
			stm = con.createStatement();
			
			String sql = "insert into `cart`(username,productType,number,productPrice,orderId)"+" VALUES('"+cart.getUsername()+"','"+cart.getProductType()+"','"+cart.getNumber()+"','"+cart.getProductPrice()+"','"+cart.getOrderId()+"')";
			System.out.println(sql);
			stm.executeUpdate(sql);
			flag = 1;
		} catch (SQLException sqlex) {
			System.err.println("Cannot connect to the database!");
			sqlex.printStackTrace();
			
		} finally {
			dbc.close();
		}

		return flag;
		
	}


	public int getCurrentIndex() {
		int num=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException cnfex) {
			System.err.println("Fail to load JDBC/ODBC!");
			cnfex.printStackTrace();
			
		}

		Connection con = null; 
		Statement stm = null; 
		ResultSet rs = null; 
		DBConnect dbc = null;
		
		try {
			dbc = new DBConnect();
			con = dbc.getConnection();
			stm = con.createStatement();
			String sql = "select * From `order` Where id=1";
			System.out.println(sql);
			rs = stm.executeQuery(sql);
			if (rs.next()) {
				num = rs.getInt("num");
			}
		} catch (SQLException sqlex) {
			System.err.println("Cannot connect to the database!");
			sqlex.printStackTrace();
			
		} finally {
			dbc.close();
		}
		return num;

	}

	public void updateCurrentIndex() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException cnfex) {
			System.err.println("Fail to load JDBC/ODBC!");
			cnfex.printStackTrace();
		}

		Connection con = null;
		Statement stm = null;
		DBConnect dbc = null;
		try {
			dbc= new DBConnect();
			con = dbc.getConnection();
			stm = con.createStatement();
			int num= getCurrentIndex();
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String time = format.format(new Date());
			String sql = "update `order` set num="+(num+1)+" where id=1";
			System.out.println(sql);
			stm.executeUpdate(sql);
		} catch (SQLException sqlex) {
			System.err.println("Cannot connect to the database!");
			sqlex.printStackTrace();
			
		} finally {
			dbc.close();
		}

	}


	public void addOrder(Order order) throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException cnfex) {
			System.err.println("Fail to load JDBC/ODBC!");
			cnfex.printStackTrace();
			
		}

		Connection con = null;
		Statement stm = null;
		DBConnect dbc = null;
		try {
			dbc= new DBConnect();
			con = dbc.getConnection();
			stm = con.createStatement();
			
			String sql = "insert into `order`(username,userphone,useraddress,useremail,comments,total_price,date) values('"+order.getUsername()+"','"+order.getUserphone()+"','"+order.getUseraddress()+"','"+order.getUseremail()+"','"+order.getCommemts()+"','"+order.getTotal_price()+"','"+order.getDate()+"')";
			System.out.println(sql);
			stm.executeUpdate(sql);
		} catch (SQLException sqlex) {
			System.err.println("Cannot connect to the database!");
			sqlex.printStackTrace();
			
		} finally {
			dbc.close();
		}

	}


	
	public ArrayList<Order> quetyOrder(String username) throws Exception {
		ArrayList<Order> orderList = new ArrayList<Order>();
		
		Order order =null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException cnfex) {
			System.err.println("Fail to load JDBC/ODBC!");
			cnfex.printStackTrace();
			
		}

		Connection con = null; 
		Statement stm = null; 
		ResultSet rs = null; 
		DBConnect dbc = null;
		
		try {
			dbc = new DBConnect();
			con = dbc.getConnection();
			stm = con.createStatement();
			String sql = "select * From `order` Where username='" + username + "'";
			
			System.out.println(sql);
			
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				order = new Order();
				//cart.setComments(rs.getString("comments"));
				//cart.setDate(rs.getString("date"));
				order.setCommemts(rs.getString("comments"));
				order.setDate(rs.getString("date"));
				order.setId(rs.getInt("id"));
				order.setTotal_price(rs.getInt("total_price"));
				order.setUseraddress(rs.getString("useraddress"));
				order.setUseremail(rs.getString("useremail"));
				order.setUsername(rs.getString("username"));
				order.setUserphone(rs.getString("userphone"));
				orderList.add(order);
			}
		} catch (SQLException sqlex) {
			System.err.println("Cannot connect to the database!");
			sqlex.printStackTrace();
			
		} finally {
			dbc.close();
		}
		
		return orderList;
	}

}
