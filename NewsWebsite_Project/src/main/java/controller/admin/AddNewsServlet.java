package controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Author;
import model.Category;
import model.News;
import service.NewsService;

/**
 * Servlet implementation class AddNews
 */
@WebServlet("/admin-addnews-author")
public class AddNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddNewsServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/Views/admin/addnews.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String message = "";
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String category = request.getParameter("category");
		String author = request.getParameter("author");
		String content = request.getParameter("content");
		String image = (String) session.getAttribute("image_news_upload");
		
		News news = new News();
		Category categoryId = new Category();
		Author authorId = new Author();
		news.setAuthorId(authorId);
		news.setCategoryId(categoryId);
		long cate , au;
		try {
			cate = Long.parseLong(category);
			au = Long.parseLong(author);
			categoryId.setId(cate);
			authorId.setId(au);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		news.setContent(content);
		news.setShortDescription(description);
		news.setTitle(title);
		news.setImage(image);
		
		NewsService service = new NewsService();
		int result = service.save(news);
		if(result > 0) {
			message = "Thêm thành công";
			request.setAttribute("Success", message);
			
		}
		else {
			message = "Chủ đề không hợp lệ hoặc đã tồn tại!";
			request.setAttribute("Fail", message);
		}
		request.getRequestDispatcher("/Views/admin/addnews.jsp").forward(request, response);
		
		
	}

}
