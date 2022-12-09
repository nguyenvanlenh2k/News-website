package service;

import java.util.List;

import dao.UserDAO;
import dao.UserImplement;
import model.User;

public class LoginService {
	UserDAO userDAO;
	
	public LoginService() {
		userDAO = new UserImplement();
	}

	public User checkAccout(String username, String pass) {
		User user = null;
				user = userDAO.findAccount(username, pass);
		return user;
	}
	public boolean checkUserExists(String username) {
		boolean result = false;
		List<User> list = userDAO.findAll();
		for (User u : list) {
			if(u.getUserName().equals(username)) {
				result = true;
			}
		}
		return result;
	}
	public static void main(String[] args) {
		System.out.println(new LoginService().checkUserExists("misa"));
		
	}
}

