package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Category;

public class CategoryImplement implements CategoryDAO {

	@Override
	public List<Category> findAll() {
		ArrayList<Category> list = new ArrayList<>();
		Category category = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet result = null;
		try {
			connection = ConnectionDatabase.getConnection();
			String sql = "SELECT * FROM categories";
			statement = connection.prepareStatement(sql);
			result = statement.executeQuery();
			while (result.next()) {
				category = new Category();
				category.setId(result.getLong("id"));
				category.setName(result.getString("category_name"));
				category.setUrl_id(result.getString("url_id"));
				category.setCreatedDate(result.getTimestamp("createddate"));
				category.setModifiedDate(result.getTimestamp("modifieddate"));
				list.add(category);
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
	public Category findOneById(int id) {
		Category category = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet result = null;
		try {
			connection = ConnectionDatabase.getConnection();
			String sql = "SELECT * FROM categories WHERE id = ?";
			statement = connection.prepareCall(sql);
			statement.setInt(1, id);
			result = statement.executeQuery();
			while (result.next()) {
				category = new Category();
				category.setId(result.getLong("id"));
				category.setName(result.getString("name"));
				category.setUrl_id(result.getString("url_id"));
				category.setCreatedDate(result.getTimestamp("createddate"));
				category.setModifiedDate(result.getTimestamp("modifieddate"));
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
		return category;
	}

	public Category findIdByTagName(String tagname) {
		Category category = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet result = null;
		try {
			connection = ConnectionDatabase.getConnection();
			String sql = "SELECT * FROM categories WHERE url_id = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1, tagname);
			result = statement.executeQuery();
			while (result.next()) {
				category = new Category();
			category = new Category();
			category.setId(result.getLong("id"));
			category.setName(result.getString("name"));
			category.setUrl_id(result.getString("url_id"));
			category.setCreatedDate(result.getTimestamp("createddate"));
			category.setModifiedDate(result.getTimestamp("modifieddate"));
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
		return category;
	}

	
	public static void main(String[] args) {
		NewsImplement news = new NewsImplement();
		CategoryImplement cate = new CategoryImplement();
		Category category = cate.findOneById(1);
		System.out.println(category);
	}

	@Override
	public int insert(Category category) {
		int result = 0;
		Connection connection= null;
		PreparedStatement statement = null;
		try {
			connection = ConnectionDatabase.getConnection();
			connection.setAutoCommit(true);
			String sql = "INSERT INTO CATEGORIES (category_name, url_id) "
					+ "VALUES (?,?)";
			statement = connection.prepareStatement(sql);
			statement.setString(1,category.getName());
			statement.setString(2,category.getUrl_id());
			result = statement.executeUpdate();
			connection.commit();
		}catch (Exception e) {
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
		return result ;
	}

	@Override
	public int update(Category category) {
		int result = 0;
		Connection connection= null;
		PreparedStatement statement = null;
		try {
			connection = ConnectionDatabase.getConnection();
			connection.setAutoCommit(true);
			String sql = "UPDATE CATEGORIES "
					+ "SET(category_name= ?,url_id= ?)"
					+ "WHERE ID = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1,category.getName());
			statement.setString(2,category.getUrl_id());
			statement.setLong(3, category.getId());
			result = statement.executeUpdate();
			connection.commit();
		}catch (Exception e) {
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
		return result ;
	}

	@Override
	public int delete(long id) {
		int result = 0;
		Connection connection= null;
		PreparedStatement statement = null;
		try {
			connection = ConnectionDatabase.getConnection();
			connection.setAutoCommit(true);
			String sql = "DELETE FORM CATEGORIES "
					+ "WHERE ID = ?";
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
		}finally {
			try {
				statement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result ;
	}

}
