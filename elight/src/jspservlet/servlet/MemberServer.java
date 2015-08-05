package jspservlet.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspservlet.dao.impl.UserDAOImpl;
import jspservlet.db.DBConnect;
import jspservlet.vo.User;

/**
 * Servlet implementation class MemberServer
 */
public class MemberServer extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberServer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 User user = new User();
		 HttpSession session= request.getSession();
	     user.setUsername((String)session.getAttribute("username"));
		String sql = "SELECT * From userinfo WHERE username='" + user.getUsername() +"'";
        DBConnect dbc = null;  
   
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
			 
			if (rs.next()) {
				user.setEmail(rs.getString("Email"));
				user.setName(rs.getString("name"));
				System.out.println("**********************"+user.getName());
				user.setPhone(rs.getString("phone"));
				user.setQq(rs.getString("qq"));
				
				//session = request.getSession();
				session.setAttribute("email", user.getEmail());
				session.setAttribute("name", user.getName());
				session.setAttribute("phone", user.getPhone());
				session.setAttribute("qq", user.getQq());	
				session.setAttribute("check", "true");
				session.setAttribute("member", "yes");
				response.sendRedirect("/elight/member.jsp?act=rent");
			}
			}catch(Exception e){
				e.printStackTrace();
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sql = null;
		User user = new User();
		user.setEmail(request.getParameter("Email"));
		user.setName(request.getParameter("name"));
		user.setPassword(request.getParameter("password"));
		user.setPhone(request.getParameter("phone"));
		user.setQq(request.getParameter("qq"));
		HttpSession session = request.getSession();
		user.setUsername((String) session.getAttribute("username"));
		
        DBConnect dbc = null;  
        String uid=null;
        java.sql.Statement stm = null; 
		ResultSet rs = null; 
		
        // 下面是针对数据库的具体操作   
        try{   
            // 连接数据库   
            dbc = new DBConnect() ;   
            stm =  dbc.getConnection().createStatement(); 
            // 进行数据库查询操作   
            sql="UPDATE `elightdb`.`userinfo` SET `Email`='"+user.getEmail()+"', `name`='"+user.getName()+"', `phone`='"+user.getPhone()+"', `qq`='"+user.getQq()+"' WHERE `username`='"+user.getUsername()+"'";
            System.out.println(sql);
			stm.executeUpdate(sql);
			
			session.setAttribute("qq", user.getQq());
			session.setAttribute("email", user.getEmail());
			session.setAttribute("phone",user.getPhone());
			session.setAttribute("name", user.getName());
			session.setAttribute("confirmProduct", "ok");
			session.setAttribute("member", "yes");
			
        }catch (SQLException e){   
        	System.out.println("sql error!");
            System.out.println(e.getMessage());   
        }finally{   	
            dbc.close();   
            
            response.sendRedirect("/elight/member.jsp?act=account_detail");
        }   
	}

}
