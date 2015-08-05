package jspservlet.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspservlet.dao.ProductDAO;
import jspservlet.dao.impl.ProductDAOImpl;
import jspservlet.vo.Product;

/**
 * Servlet implementation class ProductServelet
 */
public class ProductServelet extends HttpServlet {
	
	public void doGet (HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException{
			doPost(req, res);
		}
		public void doPost (HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException{
			System.out.println("serve---------");
			ProductDAO dao = new ProductDAOImpl();
			Product product = null;
			try {
				
				System.out.println(req.getParameter("type"));
				product = dao.queryById(req.getParameter("type"));
				System.out.println("productservelet-----"+product.getAddress());
				System.out.println(product.getDescription());
				
			}catch (Exception e){
				e.printStackTrace();
			}
			
			HttpSession session = req.getSession();
			session.setAttribute("confirmProduct", "ok");
			session.setAttribute("productContent", product);
			session.setAttribute("type", req.getParameter("type"));
			
			System.out.println(session.getAttribute("type"));
			System.out.println(session.getAttribute("type"));
			res.sendRedirect("/elight/items.jsp");
			//RequestDispatcher rd = req.getRequestDispatcher("/elight/items.jsp");
			//rd.forward(req, res);
			
		}

}
