package service;

import java.util.List;

import model.News;

public interface INewsService {
	public List<News> findAll();
	public News findOneById(long id);
	public List<News> findByCategoryId(long categoryId);
	public List<News> findByTitle(String title);
	public int save(News news);
	public int update(News news);
	public int delete(long id);
}
