package jspservlet.servlet;

import java.io.IOException;
import java.util.Enumeration;

import javax.jms.Session;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import jspservlet.dao.UserDAO;
import jspservlet.dao.impl.UserDAOImpl;
import jspservlet.vo.User;

/**
 * Servlet implementation class RegisterServelet
 */
public class RegisterServelet extends HttpServlet {
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user=new User();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setEmail(request.getParameter("email"));
		
		UserDAO dao = new UserDAOImpl();
		int flag=0;
		 try {
				flag = dao.queryByUsername(user);
			} catch (Exception e) {
				e.printStackTrace();
		} 
		 if(flag != 0){   
			HttpSession session=request.getSession();
			session.setAttribute("errorinfo", "User name already exists!");
			response.sendRedirect("./error.jsp");
		 }
		 else{
			try {
				flag = dao.addUser(user);
				if(flag==1){
					HttpSession session=request.getSession();
					session.setAttribute("username", user.getUsername());
					session.setAttribute("password", user.getPassword());
					session.setAttribute("email", user.getEmail());
				}
				response.sendRedirect("member.jsp?act=profile");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
		
	}

}
