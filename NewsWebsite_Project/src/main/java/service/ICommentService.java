package service;

import java.util.List;

import model.Comment;

public interface ICommentService {

	public List<Comment> display(long newsId);
	public int insert(Comment comment);
	public int update(Comment comment);
	public int delete(int id);
}
