package controller.account;

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
 * Servlet implementation class RegisterController
 */
@WebServlet("/account-register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/Views/register.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String fullName= request.getParameter("name");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserService service = new UserService();
		LoginService login = new LoginService();
		User user = new User();
		Role roleId = new Role();
		String message = "";
			user.setFullName(fullName);
			user.setUserName(username);
			user.setPassword(password);
			user.setEmail(email);
			user.setStatus(1);
			user.setRoleId(roleId);
			roleId.setId(2L);
		if(login.checkUserExists(username) != null || login.checkEmailExists(email)!= null) {
			message = "Tên tài khoản hoặc email này đã tồn tại!";
			request.setAttribute("Message", message);
			request.setAttribute("UserRegister", user);
			request.getRequestDispatcher("/Views/register.jsp").forward(request, response);
			}
		else {
			System.out.println(service.save(user));
			message = "Đăng kí tài khoản thành công";
			request.setAttribute("UserRegister", user);
			request.setAttribute("Message", message);
			request.getRequestDispatcher("/Views/login.jsp").forward(request, response);;
		}
	}

}
