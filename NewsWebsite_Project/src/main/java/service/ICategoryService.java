package service;

import java.util.List;

import model.Category;

public interface ICategoryService {
	public List<Category> findAll();
	public Category findOneById(int id );
	public Category findIdByTagName(String tagname);
	public int insert(Category category);
	public int update(Category category);
	public int delete(long id);
}
