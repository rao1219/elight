package jspservlet.servlet;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jspservlet.db.DBConnect;
import jspservlet.vo.Product;

public class testDB {
	public  static void testDB(){
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
			dbc= new DBConnect();
			con = dbc.getConnection();
			stm = con.createStatement();
			String sql = "select * From product Where type='sport'";
			System.out.println(sql);
			rs = stm.executeQuery(sql); 
			if (rs.next()) {
				String typeString = rs.getString("type");
				String address = rs.getString("address");
				System.out.println(typeString+address);

			}
		} catch (SQLException sqlex) {
			System.err.println("SQL error!");
			sqlex.printStackTrace();
			
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			if (stm != null)
				try {
					stm.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			if (con != null)
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
					
				}
		}
	}
	public static void testIMp(){
		Product product = null;
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
			dbc= new DBConnect();
			con = dbc.getConnection();
			stm = con.createStatement();
			String sql = "select * From product Where type='sport'";
			System.out.println(sql);
			rs = stm.executeQuery(sql); 
			System.out.println("DBC connect ok.....");
			if (rs.next()) {
				System.out.println(rs.getString("price"));
				System.out.println(rs.getString("seller"));
				System.out.println(rs.getString("description"));
				System.out.println(rs.getString("telephone"));
				product = new Product();
				//product.setType(type);
				System.out.println(rs.getString("address"));
				product.setAddress(rs.getString("address"));
			//	System.out.println(product.getAdress());
			//	System.out.println(rs.getInt("id"));
				product.setId(rs.getInt("id"));
				product.setPrice(rs.getString("price"));
				product.setTelephone(rs.getString("telephone"));
				product.setSeller(rs.getString("seller"));
				product.setDescription(rs.getString("description"));
			//	System.out.println(product.getAdress());
				//System.out.println(product.getPrice());
				//System.out.println(product.getDescription());
				//System.out.println(product.getSeller());
				//System.out.println(product.getTelephone());
				
				

			}
		} catch (SQLException sqlex) {
			System.err.println("SQL error!");
			sqlex.printStackTrace();
			
		} finally {
			dbc.close();
		}
		System.out.println("product DAO ok---"+product.getDescription());
	}
	
	public static void main(String[] args){
		//testDB();
		testIMp();
	}
}
