package controller.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CategoryImplement;
import model.Category;
import model.News;
import service.CategoryService;
import service.NewsService;

@WebServlet(urlPatterns = { "/Home" })
public class HomeController extends HttpServlet {

	private static final long serialVersionUID = 3500762834657105845L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		CategoryService category = new CategoryService();
		NewsService news = new NewsService();
		ArrayList<Category> listCategory = (ArrayList<Category>) category.findAll();
		ArrayList<News> listAllNews = (ArrayList<News>) news.findAll();
		req.setAttribute("listAllNews", listAllNews);
		session.setAttribute("listCate", listCategory);
		req.setAttribute("TITLE", "Trang báo điện tử hàng đầu Việt Nam");
		RequestDispatcher rd = req.getRequestDispatcher("/Views/web/home.jsp");
		rd.forward(req, resp);
	}

}
