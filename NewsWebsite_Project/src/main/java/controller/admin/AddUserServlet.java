package controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Role;
import model.User;
import service.LoginService;
import service.UserService;

/**
 * Servlet implementation class AddUserServlet
 */
@WebServlet("/admin-adduser")
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/Views/admin/adduser.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = "";
		String username = request.getParameter("username");
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		System.out.println(role);
		User user = new User();
		Role rl = new Role();
		long roleId = 0;
		if(role.equals("user")) {
			roleId = 2;
		}
		else if(role.equals("author")) {
			roleId = 3;
		}
		user.setRoleId(rl);
		user.setFullName(fullname);
		user.setEmail(email);
		user.setUserName(username);
		user.setPassword(password);
		user.setStatus(1);
		rl.setId(roleId);
		LoginService loginservice = new LoginService();
		UserService userservice = new UserService();
		if(loginservice.checkUserExists(username) == null) {
			userservice.save(user);
			message = "Thêm thành công";
			request.setAttribute("Success", message);
			
		}
		else {
			message = "Tên đăng nhập này đã tồn tại";
			request.setAttribute("Fail", message);
		}
		request.getRequestDispatcher("/Views/admin/adduser.jsp").forward(request, response);
	}

}
