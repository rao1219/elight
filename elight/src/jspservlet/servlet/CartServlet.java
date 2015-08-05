package jspservlet.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.PortableServer.REQUEST_PROCESSING_POLICY_ID;

import jspservlet.dao.OrderDAO;
import jspservlet.vo.Cart;

/**
 * Servlet implementation class CartServlet
 */
public class CartServlet extends HttpServlet {

	public void doGet (HttpServletRequest req, HttpServletResponse res)
		throws IOException, ServletException{
		doPost(req, res);
	}
	public void doPost (HttpServletRequest req, HttpServletResponse res)
		throws IOException, ServletException{
		Cart cart = new Cart();
		
		cart.setUsername(req.getParameter("username"));
		
		cart.setNumber(req.getParameter("number"));
		cart.setProductPrice(req.getParameter("productPrice"));
	    cart.setProductType(req.getParameter("productType"));
	    
		System.out.println(req.getAttribute("number")+"------------req ok");
		System.out.println(cart.getNumber()+"number--------------------ok");
		
		HttpSession session = req.getSession();
		
		session.setAttribute("cart", cart);
		if(session.getAttribute("cartList")==null){
			ArrayList<Cart> cartList = new ArrayList<Cart>();
			cartList.add(cart);
			session.setAttribute("cartList", cartList);
		}
		else{
			ArrayList<Cart> cartList = (ArrayList<Cart>)session.getAttribute("cartList");
			cartList.add(cart);
			session.setAttribute("cartList", cartList);
		}
		
		res.sendRedirect("/elight/cart.jsp");
		
	/*	
		CartDAO cartDAO = new CartDAOImpl();
		try {				
			cartDAO.add(cart);
		}catch (Exception e){
			e.printStackTrace();
		}
		
		 res.sendRedirect("./viewcart");
	}
	*/
	}
}
