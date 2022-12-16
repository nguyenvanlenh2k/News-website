package service;

import java.util.List;

import model.User;

public interface IUserService {
	public User findId(long id);
	public List<User> findAll();
	public User findAccount(String username, String pass);
	public User forgotPass(String username, String email);
	public int save(User user);
	public int update(User user);
	public int delete(long id);
}
