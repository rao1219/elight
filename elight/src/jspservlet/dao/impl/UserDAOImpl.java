package jspservlet.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Statement;

import jspservlet.dao.UserDAO;
import jspservlet.db.DBConnect;
import jspservlet.vo.User;


public class UserDAOImpl implements UserDAO {

	@Override
	public int queryByUsername(User user) throws Exception {
		// TODO Auto-generated method stub
		int flag = 0;
		String sql = "SELECT * From userinfo WHERE username='" + user.getUsername() +"'";
        DBConnect dbc = null;  
        String pass=null;
        java.sql.Statement stm = null; 
		ResultSet rs = null; 
        // ������������ݿ�ľ������   
        try{   
            // �������ݿ�   
            dbc = new DBConnect();   
            stm =  dbc.getConnection().createStatement(); 
            // �������ݿ��ѯ����   
            System.out.println(sql);
			rs = stm.executeQuery(sql);
			if (rs.next()) {
				pass = rs.getString("password");
				if(pass.equals(user.getPassword())){
					flag=1;
				}
				else{
					flag=2;
				}
			}
        }catch (SQLException e){   
        	System.out.println("sql error!");
            System.out.println(e.getMessage());   
        }finally{   
            // �ر����ݿ�����   
        	if (rs != null)
				rs.close();
			if (stm != null)
				stm.close();
			
            dbc.close() ;   
        }   
		return flag;
	}

	public int addUser(User user) throws Exception {
		// TODO Auto-generated method stub
		int flag = 0;
		String sql = "INSERT INTO userinfo(username,password,email) VALUES('" + user.getUsername() + "','"+ user.getPassword() +"','" +user.getEmail() +"')";
        DBConnect dbc = null;  
        String uid=null;
        java.sql.Statement stm = null; 
		ResultSet rs = null; 
        // ������������ݿ�ľ������   
        try{   
            // �������ݿ�   
            dbc = new DBConnect() ;   
            stm =  dbc.getConnection().createStatement(); 
            // �������ݿ��ѯ����   
            System.out.println(sql);
			stm.executeUpdate(sql);
			flag=1;
			
        }catch (SQLException e){   
        	System.out.println("sql error!");
            System.out.println(e.getMessage());   
        }finally{   
            // �ر����ݿ�����   
        	if (rs != null)
				rs.close();
			if (stm != null)
				stm.close();
			
            dbc.close();   
        }   
		return flag;
	}

}
