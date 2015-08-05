package jspservlet.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspservlet.dao.impl.OrderDAOimpl;
import jspservlet.vo.Cart;
import jspservlet.vo.Order;

/**
 * Servlet implementation class OrderServelet
 */
public class OrderServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServelet() {
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
		HttpSession session = request.getSession();
		ArrayList<Cart> cartList = (ArrayList<Cart>)session.getAttribute("cartList");
		//System.out.println(cartList.get(0).getProductType());
		Order order = new Order();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(new Date());
		order.setCommemts((String)request.getParameter("comments"));
		order.setUseraddress((String)request.getParameter("userAddress"));
		order.setDate(time);
		order.setUseremail((String)session.getAttribute("email"));
		order.setUsername((String)session.getAttribute("username"));
		order.setUserphone((String)session.getAttribute("phone"));
		int total_price=0;
		OrderDAOimpl dao = new OrderDAOimpl(); 
		int num = dao.getCurrentIndex();
		for(int i=0;i<cartList.size();i++){
			try {
				total_price+=Integer.parseInt(cartList.get(i).getNumber())*Integer.parseInt(cartList.get(i).getProductPrice());
				cartList.get(i).setOrderId(num+1);
				dao.add(cartList.get(i));
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println("dao error!");
			//	e.printStackTrace();
			}
		}
	dao.updateCurrentIndex();
	order.setTotal_price(total_price);
	try {
		dao.addOrder(order);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		System.out.println("add order error!");
		e.printStackTrace();
	}
	System.out.println("ok");
	session.removeAttribute("cartList");
	session.removeAttribute("cartNum");
	response.sendRedirect("/elight/OrderQuery");	
	}

}
