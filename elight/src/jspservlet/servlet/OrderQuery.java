package jspservlet.servlet;

import java.awt.List;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspservlet.dao.impl.OrderDAOimpl;
import jspservlet.vo.Cart;
import jspservlet.vo.Order;

/**
 * Servlet implementation class OrderQuery
 */
public class OrderQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderQuery() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		OrderDAOimpl dao = new OrderDAOimpl();
		ArrayList<Cart> cartList=null;
		ArrayList<Order> orderList = null;
	//	ArrayList<Order>[ArrayList<Cart>] List = new ArrayList<Order>[ArrayList<Cart>];
		String username = (String)request.getSession().getAttribute("username");
		try{
			cartList=dao.query(username);
			orderList= dao.quetyOrder(username);
		}catch(Exception e){
			System.out.println("SQL ERROR!");
		}
		HttpSession session = request.getSession();
		session.setAttribute("orderList", orderList);
		session.setAttribute("cartInOrderList", cartList);
		//session.removeAttribute("cartList");
		if(request.getParameter("page")==null)
			response.sendRedirect("/elight/member.jsp?act=rent&msg=suc");
		else
			response.sendRedirect("/elight/CollectionQuery");
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
