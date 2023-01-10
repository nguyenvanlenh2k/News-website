package service;

import java.util.List;

import dao.CommentDAO;
import dao.CommentImplement;
import model.Comment;

public class CommentService implements ICommentService{

	CommentDAO dao;
	public CommentService() {
		dao = new CommentImplement();
	}
	@Override
	public List<Comment> display(long newsId) {
		// TODO Auto-generated method stub
		return dao.display(newsId);
	}

	@Override
	public int insert(Comment comment) {
		// TODO Auto-generated method stub
		return dao.insert(comment);
	}

	@Override
	public int update(Comment comment) {
		
		return dao.update(comment);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

}
