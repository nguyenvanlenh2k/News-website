package dao;

import java.util.List;

import model.User;
public interface UserDAO {

	public User findId(long id);
	public List<User> findAll();
	public User findAccount(String username, String pass);
	public User findAccountWithUsernameAndEmail(String username, String email);
	public int save(User user);
	public int update(User user);
	public int delete(long id);
}
