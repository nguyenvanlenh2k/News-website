package controller.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Category
 */
@WebServlet(urlPatterns = {"/Category/thoi-su","/Category/goc-nhin","/Category/the-gioi", 
		"/Category/the-thao","/Category/phap-luat","/Category/giao-duc","/Category/suc-khoe"
		,"/Category/khoa-hoc","/Category/doi-song","/Category/xe"})
public class Category extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Category() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		if(uri.contains("thoi-su")) {
			request.setAttribute("TITLE", "Thời sự");
			request.getRequestDispatcher("/Views/web/home.jsp").forward(request, response);;
		}
		if(uri.contains("the-thao")) {
			request.setAttribute("TITLE", "Thể thao");
			request.getRequestDispatcher("/Views/web/home.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
	}

}
