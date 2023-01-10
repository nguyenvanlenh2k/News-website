package controller.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Comment;
import model.News;
import service.CommentService;
import service.NewsService;

/**
 * Servlet implementation class ContentServlet
 */
@WebServlet("/Content")
public class ContentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContentServlet() {
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
	 *load bài viết theo id bài viết
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		News news = null;
		Comment comm = null;
		NewsService service = new NewsService();
		CommentService commService = new CommentService();
		long id = Long.parseLong(request.getParameter("id"));
		news = service.findOneById(id);
		ArrayList<Comment> listComment = (ArrayList<Comment>) commService.display(news.getId());
//		System.out.println(listComment.get(0).toString());
		
		request.setAttribute("newsDetail", news);
		request.setAttribute("ListComment", listComment);
		
		request.getRequestDispatcher("/Views/web/content.jsp").forward(request, response);
	}

}
