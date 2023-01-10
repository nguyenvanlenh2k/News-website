package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Role;
import model.User;

public class UserImplement implements UserDAO {

	@Override
	public User findId(long id) {
		Connection c = null;
		PreparedStatement statement = null;
		ResultSet result = null;
		User user = null;
		Role roleid;
		try {
			c = ConnectionDatabase.getConnection();
			String sql = "SELECT * FROM USERS AS U "
					+ "INNER JOIN ROLES AS R ON U.ROLEID = R.ID"
					+ "WHERE U.ID = ?";
			statement = c.prepareStatement(sql);
			statement.setLong(1, id);
			result = statement.executeQuery();
			while (result.next()) {
				user = new User();
				roleid = new Role();
				user.setRoleId(roleid);
				user.setId(result.getLong("id"));
				user.setUserName(result.getString("username"));
				user.setPassword(result.getString("password"));
				user.setFullName(result.getString("fullname"));
				user.setEmail(result.getString("email"));
				user.setStatus(result.getInt("status"));
				roleid.setName(result.getString("role_name"));
				roleid.setDescription(result.getString("description"));
				user.setCreatedDate(result.getTimestamp("createddate"));
				user.setModifiedDate(result.getTimestamp("modifieddate"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		if (c != null)
			try {
				c.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		return user;
	}

	@Override
	public List<User> findAll() {
		Connection c = null;
		PreparedStatement statement = null;
		ResultSet result = null;
		List<User> list = new ArrayList<>();
		User user = null;
		Role roleid= null;
		try {
			c = ConnectionDatabase.getConnection();
			String sql = "SELECT * FROM USERS AS U "
					+ "INNER JOIN ROLES AS R ON U.ROLEID = R.ID";
			statement = c.prepareStatement(sql);
			result = statement.executeQuery();
			while (result.next()) {
				user = new User();
				roleid = new Role();
				user.setRoleId(roleid);
				user.setId(result.getLong("id"));
				user.setUserName(result.getString("username"));
				user.setPassword(result.getString("password"));
				user.setFullName(result.getString("fullname"));
				user.setEmail(result.getString("email"));
				user.setStatus(result.getInt("status"));
				roleid.setName(result.getString("role_name"));
				roleid.setDescription(result.getString("description"));
				user.setCreatedDate(result.getTimestamp("createddate"));
				user.setModifiedDate(result.getTimestamp("modifieddate"));
				list.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (c != null)
				try {
					c.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	@Override
	public int save(User user) {
		int result = 0;
		Connection c = null;
		PreparedStatement statement = null;
		try {
			c = ConnectionDatabase.getConnection();
			c.setAutoCommit(false);
			String sql = "INSERT INTO users (username, password, email, fullname, status, roleid)"
					+ " VALUES (?,?,?,?,?,?)";
			statement = c.prepareStatement(sql);
			statement.setString(1, user.getUserName());
			statement.setString(2, user.getPassword());
			statement.setString(3, user.getEmail());
			statement.setString(4, user.getFullName());
			statement.setInt(5, user.getStatus());
			statement.setLong(6, user.getRoleId().getId());
			result = statement.executeUpdate();
			c.commit();
		} catch (Exception e) {
			try {
				c.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			if (c != null)
				try {
					c.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return result;

	}

	@Override
	public int update(User user) {
		int result = 0;
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			connection = ConnectionDatabase.getConnection();
			String sql = "UPDATE USERS SET password = ? WHERE id = ? and username = ? ";
			statement = connection.prepareStatement(sql);
			statement.setString(1, user.getPassword());
			statement.setLong(2, user.getId());
			statement.setString(3, user.getUserName());
			result = statement.executeUpdate();
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

		return result;

	}

	@Override
	public int delete(long id) {
		int result = 0;
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			connection = ConnectionDatabase.getConnection();
			String sql = "DELETE FROM USERS  WHERE id = ?";
			statement = connection.prepareStatement(sql);
			statement.setLong(0, id);
			result = statement.executeUpdate();
		} catch (Exception e) {
		} finally {
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}

		return result;

	}

	@Override
	public User findAccount(String username, String pass) {
		Connection c = null;
		PreparedStatement statement = null;
		ResultSet result = null;
		User user = null;
		Role roleid=null;
		try {
			c = ConnectionDatabase.getConnection();
			String sql = "SELECT * FROM USERS AS U "
					+ "INNER JOIN ROLES AS R ON U.ROLEID = R.ID "
					+ "WHERE U.username = ? AND U.password = ? ";
			statement = c.prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, pass);
			result = statement.executeQuery();
			while (result.next()) {
				user = new User();
				roleid = new Role();
				user.setRoleId(roleid);
				user.setId(result.getLong("id"));
				user.setUserName(result.getString("username"));
				user.setPassword(result.getString("password"));
				user.setFullName(result.getString("fullname"));
				user.setEmail(result.getString("email"));
				user.setStatus(result.getInt("status"));
//				roleid.setId(result.getLong("id"));
				roleid.setName(result.getString("role_name"));
				roleid.setDescription(result.getString("description"));
				user.setCreatedDate(result.getTimestamp("createddate"));
				user.setModifiedDate(result.getTimestamp("modifieddate"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		if (c != null)
			try {
				c.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		return user;
	}
	public User findAccountWithUsernameAndEmail(String username, String email) {
		Connection c = null;
		PreparedStatement statement = null;
		ResultSet result = null;
		User user = null;
		Role roleid=null;
		try {
			c = ConnectionDatabase.getConnection();
			String sql = "SELECT * FROM USERS AS U "
					+ "INNER JOIN ROLES AS R ON U.ROLEID = R.ID "
					+ "WHERE U.username = ? AND U.email = ? ";
			statement = c.prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, email);
			result = statement.executeQuery();
			while (result.next()) {
				user = new User();
				roleid = new Role();
				user.setRoleId(roleid);
				user.setId(result.getLong("id"));
				user.setUserName(result.getString("username"));
				user.setPassword(result.getString("password"));
				user.setFullName(result.getString("fullname"));
				user.setEmail(result.getString("email"));
				user.setStatus(result.getInt("status"));
//				roleid.setId(result.getLong("id"));
				roleid.setName(result.getString("role_name"));
				roleid.setDescription(result.getString("description"));
				user.setCreatedDate(result.getTimestamp("createddate"));
				user.setModifiedDate(result.getTimestamp("modifieddate"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (c != null)
			try {
				c.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		return user;
	}

	
	public static void main(String[] args) {
		System.out.println(new UserImplement().findAll().get(0).toString());
		
	}
}
