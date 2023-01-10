package controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Category;
import service.CategoryService;

/**
 * Servlet implementation class AddCategoryServlet
 */
@WebServlet("/admin-addcategory")
public class AddCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/Views/admin/addcategory.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String url = request.getParameter("url-action");
		Category cate = new Category();
		String message = "";
		cate.setName(name);
		cate.setUrl_id(url);
		
		CategoryService cateservice = new CategoryService();
		int result= cateservice.insert(cate);
		if(result > 0) {
			message = "Thêm thành công";
			request.setAttribute("Success", message);
			
		}
		else {
			message = "Chủ đề không hợp lệ hoặc đã tồn tại!";
			request.setAttribute("Fail", message);
		}
		request.getRequestDispatcher("/Views/admin/addcategory.jsp").forward(request, response);
	}

}
