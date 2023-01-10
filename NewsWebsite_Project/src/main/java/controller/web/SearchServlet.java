package controller.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

import model.News;
import service.NewsService;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
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
	 * trả về kết quả tìm kiếm từ phương thức tìm kiếm thông qua tên bài viết đó luôn đính kèm id
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("html/text");
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("search");
		System.out.println(title);
		if(title == null || title.equals("".trim())) {
			request.getRequestDispatcher("/Views/web/search.jsp").forward(request, response);
		}else {
			
			NewsService news = new NewsService();
			ArrayList<News> list = (ArrayList<News>) news.findByTitle(title);
			System.out.println(list.size());
			request.setAttribute("search", title);
			request.setAttribute("ResultSearch", list);
			request.getRequestDispatcher("/Views/web/search.jsp").forward(request, response);
		}
	}

}
