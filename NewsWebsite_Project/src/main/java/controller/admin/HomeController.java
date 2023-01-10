package controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Category;
import model.User;
import service.CategoryService;
import service.NewsService;
import service.UserService;

@WebServlet(urlPatterns = { "/admin-home","/admin-home-author" })
public class HomeController extends HttpServlet {

	private static final long serialVersionUID = 3500762834657105845L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		NewsService newsSer = new NewsService();
		CategoryService cateSer = new CategoryService();
		UserService usersSer = new UserService();
		int quantilyNews = newsSer.findAll().size();
		int quantilyCate = cateSer.findAll().size();
		ArrayList<User> listUser = (ArrayList<User>) usersSer.findAll();
		int quantilyUser = listUser.size();
		
		ArrayList<Integer> quantily = new ArrayList<Integer>();
		quantily.add(quantilyNews);
		quantily.add(quantilyCate);
		quantily.add(quantilyUser);
		ArrayList<Category> listCategory = (ArrayList<Category>) cateSer.findAll();
		session.setAttribute("listCate", listCategory);
		session.setAttribute("Admin_ListUser", listUser);
		session.setAttribute("Admin_Quantily", quantily);
		RequestDispatcher rd = req.getRequestDispatcher("/Views/admin/home.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}

}
