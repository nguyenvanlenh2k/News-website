package service;

import java.util.List;

import dao.UserDAO;
import dao.UserImplement;
import model.User;

public class UserService implements IUserService {

	UserDAO userDAO;

	public UserService() {
		userDAO = new UserImplement();
	}

	@Override
	public User findId(long id) {
		return userDAO.findId(id);
	}

	@Override
	public List<User> findAll() {
		return userDAO.findAll();
	}

	@Override
	public User findAccount(String username, String pass) {
		return userDAO.findAccount(username, pass);
	}
	@Override
	public User forgotPass(String username, String email) {
		return userDAO.findAccountWithUsernameAndEmail(username, email);
	}

	@Override
	public int save(User user) {
		return userDAO.save(user);
	}

	@Override
	public int update(User user) {
		int result = 0;
		if(user.getId() != 4) {
			result = userDAO.update(user);
		}
		return result;
	}

	@Override
	public int delete(long id) {
		int result = 0;
		if(id != 4 ) { /// nếu id là admin thì không được xóa
			result = userDAO.delete(id);
		}
		return result;
	}

}
