package controller.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.NewsImplement;
import model.Category;
import model.News;
import service.CategoryService;
import service.NewsService;

/**
 * Servlet implementation class Category
 */
@WebServlet(urlPatterns = {"/thoi-su","/giai-tri","/the-gioi", 
		"/the-thao","/phap-luat","/giao-duc","/suc-khoe"
		,"/khoa-hoc","/doi-song","/xe"})
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryServlet() {
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
		
		/**
		 * nhận danh sách các bài viết theo id của category từ service
		 */
		HttpSession session = request.getSession();
		String uri = request.getRequestURI();
		String url_category = request.getParameter("url_id");
//		System.out.println(url_category);
		Category category= null;
		NewsService news = new NewsService();
		CategoryService cate = new CategoryService();
		category = cate.findIdByTagName(url_category);
		if(category == null) {
			response.sendRedirect("/NewsWebsite_Project/Home");
		}else {
		request.setAttribute("TITLE_CATEGORY", category.getName());
			ArrayList<News> list = (ArrayList<News>) news.findByCategoryId(category.getId());
			session.setAttribute("listNews", list);
		request.getRequestDispatcher("/Views/web/category.jsp").forward(request, response);
		}
		
	}
	

}
