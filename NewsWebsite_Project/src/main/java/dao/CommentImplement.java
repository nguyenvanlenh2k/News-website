package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Comment;
import model.News;
import model.User;

public class CommentImplement implements CommentDAO{

	@Override
	public List<Comment> display(long newsId) {
		ArrayList<Comment> list = new ArrayList<>();
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet result = null;
		Comment comment = null;
		User user = null;
		News news = null;
		try {
			connection = ConnectionDatabase.getConnection();
			connection.setAutoCommit(false);
			String sql = "SELECT * FROM COMMENTS AS C "
					+"INNER JOIN USERS AS U ON C.user_id = U.id "
					+ "INNER JOIN NEWS AS N ON C.news_id  = N.id "
					+ "WHERE C.news_id = ?";
			statement = connection.prepareStatement(sql);
			statement.setLong(1, newsId);
			result = statement.executeQuery();
			while(result.next()) {
				comment = new Comment();
				user = new User();
				news = new News();
				comment.setNewsId(news);
				comment.setUserId(user);
				
				comment.setContent(result.getString("content_comment"));
				user.setFullName(result.getString("fullname"));
				user.setId(result.getLong("user_id"));
				news.setId(result.getLong("news_id"));
				
				
				list.add(comment);
				}
			
			connection.commit();
			
		} catch (Exception e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally {
			try {
				result.close();
				statement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}

	@Override
	public int insert(Comment comment) {
		Connection connection = null;
		PreparedStatement statement = null;
		int result = 0;
		try {
			connection = ConnectionDatabase.getConnection();
			connection.setAutoCommit(false);
			String sql = "INSERT INTO COMMENTS (content_comment,user_id,news_id) "
					+ "VALUES (?,?,?)";
			statement = connection.prepareStatement(sql);
			statement.setString(1, comment.getContent());
			statement.setLong(2, comment.getUserId().getId());
			statement.setLong(3, comment.getNewsId().getId());
			result = statement.executeUpdate();
			connection.commit();
			
		} catch (Exception e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally {
			try {
				statement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}

	@Override
	public int update(Comment comment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		Connection connection = null;
		PreparedStatement statement = null;
		int result = 0;
		try {
			connection = ConnectionDatabase.getConnection();
			connection.setAutoCommit(false);
			String sql = "DELETE FROM COMMENTS "
					+ "WHERE ID = ?";
			statement = connection.prepareStatement(sql);
			statement.setLong(1, id);
			result = statement.executeUpdate();
			connection.commit();
			
		} catch (Exception e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally {
			try {
				statement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}

	public static void main(String[] args) {
		Comment comment = new Comment();
		User user = new User();
		News news = new News();
		comment.setNewsId(news);
		comment.setUserId(user);
		news.setId((long) 58);
		user.setId(1L);
		comment.setContent("Cùi bắp");
		
		System.out.println(new CommentImplement().insert(comment));
	}

}
