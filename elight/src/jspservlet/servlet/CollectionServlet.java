package jspservlet.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspservlet.dao.impl.CollectionDAOimpl;
import jspservlet.vo.ItemCollection;

/**
 * Servlet implementation class CollectionServlet
 */
public class CollectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CollectionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CollectionDAOimpl dao = new CollectionDAOimpl();
		HttpSession session = request.getSession();
		
		String user =(String)session.getAttribute("username");
		String type = request.getParameter("type");
		int flag = dao.addCollection(user, type);
		if(flag==-1){
			session.setAttribute("errorinfo", "You have already added this collection...");
			response.sendRedirect("/elight/error.jsp");
		}
		else{
			ItemCollection mycollect = null;
			try {
				 mycollect = dao.queryByUsername(user);
			} catch (Exception e) {
				// 
				e.printStackTrace();
			}
			session.setAttribute("collect", mycollect.getMyCollectionList());
			response.sendRedirect("/elight/member.jsp?act=myrenting&msg=suc");
		}
	}

}
