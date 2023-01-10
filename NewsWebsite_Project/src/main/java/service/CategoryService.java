package service;
import java.util.List;

import dao.CategoryDAO;
import dao.CategoryImplement;
import model.Category;

public class CategoryService implements ICategoryService {

	CategoryDAO cateDAO;

	public CategoryService() {
		cateDAO = new CategoryImplement();
	}

	@Override
	public List<Category> findAll() {
		return cateDAO.findAll();
	}

	@Override
	public Category findOneById(int id) {
		return cateDAO.findOneById(id);
	}

	public Category findIdByTagName(String tagname) {
		return cateDAO.findIdByTagName(tagname);
	}

	@Override
	public int insert(Category category) {
		// TODO Auto-generated method stub
		return cateDAO.insert(category);
	}

	@Override
	public int update(Category category) {
		// TODO Auto-generated method stub
		return cateDAO.update(category);
	}

	@Override
	public int delete(long id) {
		return cateDAO.delete(id);
	}
}
