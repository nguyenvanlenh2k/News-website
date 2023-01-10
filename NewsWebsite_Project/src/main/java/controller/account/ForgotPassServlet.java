package controller.account;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.EmailUtils;
import model.Email;
import model.User;
import service.LoginService;
import service.UserService;

/**
 * Servlet implementation class ForgotPassServlet
 */
@WebServlet("/account-forgot")
public class ForgotPassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPassServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/Views/forgotpass.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = "";
		String message = "";
		User user = null;
		int update = 0;
		Random ran = new Random();
		
		UserService userservice = new UserService();
		final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		user = userservice.forgotPass(username, email);
		if(user !=null) {
			for(int i = 0 ; i < 4; i++) {
				password+= chars.charAt(ran.nextInt(chars.length()));
			}
			update = userservice.update(user);
			user.setPassword(password);
			
			Email e = new Email();

			e.setFrom("20130303@st.hcmuaf.edu.vn") ;
			e.setFromPassword("velskbpkvhqryfar");
			e.setTo(email);
			e.setSubject("Quên mật khẩu");

			StringBuilder sb = new StringBuilder();

			sb.append("Chào ").append(username) .append("\n");
			sb.append("Bạn đã quên mật khẩu thành công. \n");
			sb.append("Mật khẩu mới của bạn là: ").append(user.getPassword()) .append("\n");
			sb. append("Trân trọng!\n");

			sb.append("From VnExpress NLU Admin") ;

			 

			e.setContent(sb.toString());
			
				try {
					EmailUtils.send(e);
				} catch (Exception e1) {
					System.out.println("Lỗi");
					e1.printStackTrace();
				}
			
			message = "Quên mật khẩu thành công. Vui lòng kiểm tra mail để nhận mật khẩu mới";
			request.setAttribute("Message", message);
			request.getRequestDispatcher("/Views/login.jsp").forward(request, response);
			
		}else {
			message = "Tên đăng nhập và email không tồn tại hoặc không khớp!";
			request.setAttribute("Message", message);
			request.getRequestDispatcher("/Views/forgotpass.jsp").forward(request, response);
		}
		
	}

}
