package controller.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Comment;
import model.News;
import model.User;
import service.CommentService;

/**
 * Servlet implementation class CommentServlet
 */
@WebServlet("/Comment")
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CommentServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String content = request.getParameter("message");
		String idUser = request.getParameter("user");
		String idNews = request.getParameter("news");

		Comment comment = new Comment();
		User user = new User();
		News news = new News();
		comment.setContent(content);
		comment.setNewsId(news);
		comment.setUserId(user);
		long uid = 0L, nid = 0L;
		try {
			uid = Long.parseLong(idUser);
			user.setId((long) uid);
			nid = Long.parseLong(idNews);
			news.setId((long) nid);
		} catch (Exception e) {
			// TODO: handle exception
		}

		CommentService service = new CommentService();

		int result = service.insert(comment);
		System.out.println(result);
		response.sendRedirect(request.getContextPath() + "/Content?id=" + nid);
	}

}
