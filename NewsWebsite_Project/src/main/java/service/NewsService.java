package service;

import java.util.List;

import dao.NewsDAO;
import dao.NewsImplement;
import model.News;

public class NewsService implements INewsService {

	NewsDAO newsDAO;
	
	public NewsService() {
		newsDAO = new NewsImplement();
	}
	@Override
	public List<News> findAll() {
		// TODO Auto-generated method stub
		return newsDAO.findAll();
	}

	@Override
	public News findOneById(long id) {
		// TODO Auto-generated method stub
		return newsDAO.findOneById(id);
	}

	@Override
	public List<News> findByCategoryId(long categoryId) {
		// TODO Auto-generated method stub
		return newsDAO.findByCategoryId(categoryId);
	}

	@Override
	public List<News> findByTitle(String title) {
		// TODO Auto-generated method stub
		return newsDAO.findByTitle(title);
	}
	@Override
	public int save(News news) {
		// TODO Auto-generated method stub
		return newsDAO.save(news);
	}
	@Override
	public int update(News news) {
		// TODO Auto-generated method stub
		return newsDAO.update(news);
	}
	@Override
	public int delete(long id) {
		return newsDAO.delete(id);
	}

	

}
