package jspservlet.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jspservlet.dao.ProductDAO;
import jspservlet.db.DBConnect;
import jspservlet.vo.Product;

public class ProductDAOImpl implements ProductDAO {

	public Product queryById(String type) throws Exception {
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
			String sql = "select * From product Where type='" + type + "'";
			System.out.println(sql);
			rs = stm.executeQuery(sql); 
			System.out.println("DBC connect ok.....");
			if (rs.next()) {
				System.out.println(rs.getString("price"));
				System.out.println(rs.getString("price"));
				System.out.println(rs.getString("seller"));
				System.out.println(rs.getString("description"));
				System.out.println(rs.getString("telephone")+"---------------OK");
				product = new Product();
				
				System.out.println(rs.getString("telephone")+"----------------OK");
				product.setType(type);
				System.out.println(rs.getString("address"));
				product.setAddress(rs.getString("address"));
				System.out.println(product.getAddress());
				System.out.println(rs.getInt("id"));
				product.setId(rs.getInt("id"));
				product.setPrice(rs.getString("price"));
				product.setTelephone(rs.getString("telephone"));
				product.setSeller(rs.getString("seller"));
				product.setDescription(rs.getString("description"));
				System.out.println(product.getAddress());
				System.out.println(product.getPrice());
				System.out.println(product.getDescription());
				System.out.println(product.getSeller());
				System.out.println(product.getTelephone());
				
				

			}
		} catch (SQLException sqlex) {
			System.err.println("SQL error!");
			sqlex.printStackTrace();
			
		} finally {
			dbc.close();
		}
		System.out.println("product DAO ok---"+product.getDescription());
		return product;
	}
}
