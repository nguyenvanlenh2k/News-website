package controller.account;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(urlPatterns = { "/account-login", "/account-logout" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String uri = request.getRequestURI();
		if (uri.contains("account-login")) {
			request.getRequestDispatcher("/Views/login.jsp").forward(request, response);
		} else if (uri.contains("account-logout")) {
			session.invalidate();
			request.getRequestDispatcher("/Views/login.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserService service = new UserService();
		// authentication kiem tra xac thuc nguoi dung co ton tai hay khong
		User user = (service.findAccount(username, password));
		if (user != null) { // neu tai khoan ton tai
			// authorization kiem tra quyen cua tai khoan vua dang nhap
			if (user.getRoleId().getName().equals("admin") && user.getStatus() == 1) { // neu la admin
				session.setAttribute("USER", user);
				request.getRequestDispatcher("/admin.jsp").forward(request, response);
			} else if (user.getRoleId().getName().equals("author") && user.getStatus() == 1) { // neu la tac gia
				response.sendRedirect(request.getContextPath()+"/admin-home-author");
				session.setAttribute("USER", user);
			} else if (user.getRoleId().getName().equals("user") && user.getStatus() == 1) { // neu la user
				response.sendRedirect(request.getContextPath()+"/Home");
				session.setAttribute("USER", user);
			} else { //
				request.setAttribute("AccoutIsBlock", "Tài khoản này đang bị khóa!");
				request.getRequestDispatcher("/Views/login.jsp").forward(request, response);
			}
		} else {
			request.setAttribute("AccoutNotExists", "Tên đăng nhập hoặc mật khẩu bị sai!");
			request.getRequestDispatcher("/Views/login.jsp").forward(request, response);
		}

	}
//	}

}
