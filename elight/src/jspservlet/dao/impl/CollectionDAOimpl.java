package jspservlet.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import jspservlet.dao.CollectionDAO;
import jspservlet.db.DBConnect;
import jspservlet.vo.ItemCollection;
import jspservlet.vo.Product;

public class CollectionDAOimpl implements CollectionDAO{

	public ItemCollection queryByUsername(String username) throws Exception {

		String sql = "SELECT * From collect WHERE username='" +username+"'";
        DBConnect dbc = null;  
        ItemCollection collecList = new ItemCollection();
        collecList.setUsername(username);
        ArrayList<Product> productList = new ArrayList<Product>();
        Product temp = null;
        java.sql.Statement stm = null; 
		ResultSet rs = null; 
        // 下面是针对数据库的具体操作   
        try{   
            // 连接数据库   
            dbc = new DBConnect();   
            stm =  dbc.getConnection().createStatement(); 
            // 进行数据库查询操作   
            System.out.println(sql);
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				temp = new Product();
				temp.setType(rs.getString("productname"));
				productList.add(temp);
			}
			collecList.setMyCollectionList(productList);
			
        }catch (SQLException e){   
        	System.out.println("sql error!");
            System.out.println(e.getMessage());   
        }finally{   
            // 关闭数据库连接   
        	
            dbc.close() ;   
        }   
		return collecList;
	}

	public int addCollection(String user,String type) {
		int flag=0;
		String sql = "INSERT INTO collect(username,productname) VALUES('" + user + "','"+ type +"')";
        DBConnect dbc = null;  
        String uid=null;
        java.sql.Statement stm = null; 
		ResultSet rs = null; 
		ItemCollection userCollection =null;
		try {
			userCollection = queryByUsername(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		for(int i=0;i<userCollection.getMyCollectionList().size();i++){
			if(type.equals(userCollection.getMyCollectionList().get(i).getType())){
				flag=-1;//已经存在
				break;
			}
		}
		if(flag==0){
			 dbc = new DBConnect() ;   
	         try {
				stm =  dbc.getConnection().createStatement();
				 System.out.println(sql);
		         stm.executeUpdate(sql);
		         flag=1;
			} catch (SQLException e) {
				
				e.printStackTrace();
			}    
	        
		}
		
		
		return flag;
	}

}
