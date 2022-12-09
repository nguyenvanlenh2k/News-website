package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import model.Author;
import model.Category;
import model.News;

public class NewsImplement implements NewsDAO {

	@Override
	public List<News> findAll() {
		ArrayList<News> list = new ArrayList<>();
		Connection connection = null;
		News news = null;
		Category categoryid;
		Author author;
		PreparedStatement statement = null;
		ResultSet result = null;
		try {
			connection = ConnectionDatabase.getConnection();
			String sql = "SELECT * FROM news as n " + "INNER JOIN authors as a ON n.authorid = a.id "
					+ "INNER JOIN categories as c ON n.categoryid = c.id " + "ORDER BY n.createddate DESC";
			statement = connection.prepareStatement(sql);
			result = statement.executeQuery();
			while (result.next()) {
				news = new News();
				categoryid = new Category();
				author = new Author();
				news.setAuthorId(author);
				news.setCategoryId(categoryid);
				news.setId(result.getLong("id"));
				news.setTitle(result.getString("title"));
				news.setImage(result.getString("image"));
				news.setShortDescription(result.getString("shortdescription"));
				news.setContent(result.getString("content"));
				categoryid.setName(result.getString("category_name"));
				author.setName(result.getString("author_name"));
				news.setCreatedDate(result.getTimestamp("createddate"));
				news.setModifiedDate(result.getTimestamp("modifieddate"));
				list.add(news);
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	@Override
	public News findOneById(long id) {
		Connection connection = null;
		News news = null;
		Category categoryid = null;
		Author author = null;
		PreparedStatement statement = null;
		ResultSet result = null;
		try {
			connection = ConnectionDatabase.getConnection();
			String sql = "SELECT * FROM news as n " + "INNER JOIN authors as a ON n.authorid = a.id "
					+ "INNER JOIN categories as c ON n.categoryid = c.id " + "WHERE n.id = ? ";
			statement = connection.prepareStatement(sql);
			statement.setLong(1, id);
			result = statement.executeQuery();
			while (result.next()) {
				news = new News();
				categoryid = new Category();
				author = new Author();
				news.setAuthorId(author);
				news.setCategoryId(categoryid);
				news.setId(result.getLong("id"));
				news.setTitle(result.getString("title"));
				news.setImage(result.getString("image"));
				news.setShortDescription(result.getString("shortdescription"));
				news.setContent(result.getString("content"));
				categoryid.setName(result.getString("category_name"));
				author.setName(result.getString("author_name"));
				news.setCreatedDate(result.getTimestamp("createddate"));
				news.setModifiedDate(result.getTimestamp("modifieddate"));
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return news;
	}

	@Override
	public List<News> findByCategoryId(long categoryId) {
		ArrayList<News> list = new ArrayList<>();
		Connection connection = null;
		News news = null;
		Category categoryid = null;
		Author author = null;
		PreparedStatement statement = null;
		ResultSet result = null;
		try {
			connection = ConnectionDatabase.getConnection();
			String sql = "SELECT * FROM news as n " + "INNER JOIN authors as a ON n.authorid = a.id "
					+ "INNER JOIN categories as c ON n.categoryid = c.id " + "WHERE n.categoryid = ? ";
			statement = connection.prepareStatement(sql);
			statement.setLong(1, categoryId);
			result = statement.executeQuery();
			while (result.next()) {
				news = new News();
				categoryid = new Category();
				author = new Author();
				news.setAuthorId(author);
				news.setCategoryId(categoryid);
				news.setId(result.getLong("id"));
				news.setTitle(result.getString("title"));
				news.setImage(result.getString("image"));
				news.setShortDescription(result.getString("shortdescription"));
				news.setContent(result.getString("content"));
				categoryid.setName(result.getString("category_name"));
				author.setName(result.getString("author_name"));
				news.setCreatedDate(result.getTimestamp("createddate"));
				news.setModifiedDate(result.getTimestamp("modifieddate"));
				list.add(news);
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	@Override
	public List<News> findByTitle(String title) {
		ArrayList<News> list = new ArrayList<>();
		Connection connection = null;
		News news = null;
		Category categoryid = null;
		Author author = null;
		PreparedStatement statement = null;
		ResultSet result = null;
		try {
			connection = ConnectionDatabase.getConnection();
			String sql = "SELECT * FROM news as n " + "INNER JOIN authors as a ON n.authorid = a.id "
					+ "INNER JOIN categories as c ON n.categoryid = c.id " + "WHERE n.Title LIKE CONCAT('%',?,'%')";
			statement = connection.prepareStatement(sql);
			statement.setString(1, title);
			result = statement.executeQuery();
			while (result.next()) {
				news = new News();
				categoryid = new Category();
				author = new Author();
				news.setAuthorId(author);
				news.setCategoryId(categoryid);
				news.setId(result.getLong("id"));
				news.setTitle(result.getString("title"));
				news.setImage(result.getString("image"));
				news.setShortDescription(result.getString("shortdescription"));
				news.setContent(result.getString("content"));
				categoryid.setName(result.getString("category_name"));
				author.setName(result.getString("author_name"));
				news.setCreatedDate(result.getTimestamp("createddate"));
				news.setModifiedDate(result.getTimestamp("modifieddate"));
				list.add(news);
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	public static void main(String[] args) {
//	 SimpleDateFormat date = new SimpleDateFormat("dd/MM/yyyy");
//	 System.out.println(date.format(new NewsImplement().findByTitle("Messi").get(0).getCreatedDate()));
		System.out.println(new NewsImplement().findAll().get(0));
	}

	@Override
	public int save(News news) {
		int result = 0;
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			connection = ConnectionDatabase.getConnection();
			connection.setAutoCommit(false);
			String sql = "INSERT INTO NEWS (title,image,shortdescription,content,categoryid,authorid) "
					+ "	VALUES( ?,?,?,?,?,?)";
			statement = connection.prepareStatement(sql);
			statement.setString(1, news.getTitle());
			statement.setString(2, news.getImage());
			statement.setString(3, news.getShortDescription());
			statement.setString(4, news.getContent());
			statement.setLong(5, news.getCategoryId().getId());
			statement.setLong(6, news.getAuthorId().getId());
			result = statement.executeUpdate();
			connection.commit();
		}catch (Exception e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		finally {
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
	public int update(News news) {
		int result = 0;
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			connection = ConnectionDatabase.getConnection();
			connection.setAutoCommit(false);
			String sql = "UPDATE NEWS "
					+ "	SET(title = ?,image = ?,shortdescription = ?,content = ?,categoryid = ?,authorid = ?) "
					+ "WHERE ID = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1, news.getTitle());
			statement.setString(2, news.getImage());
			statement.setString(3, news.getShortDescription());
			statement.setString(4, news.getContent());
			statement.setLong(5, news.getCategoryId().getId());
			statement.setLong(6, news.getAuthorId().getId());
			statement.setLong(7, news.getId());
			result = statement.executeUpdate();
			connection.commit();
		}catch (Exception e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		finally {
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
	public int delete(long id) {
		int result = 0;
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			connection = ConnectionDatabase.getConnection();
			connection.setAutoCommit(false);
			String sql = "DELETE FROM NEWS "
					+ "	WHERE ID = ?";
			statement = connection.prepareStatement(sql);
			statement.setLong(1, id);
			result = statement.executeUpdate();
			connection.commit();
		}catch (Exception e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		finally {
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

}
