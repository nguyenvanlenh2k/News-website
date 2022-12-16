package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDatabase {
	public static Connection getConnection() {
		Connection c = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mySQL://localhost:3306/project_news_ltwed";
			String user = "root";
			String password ="";
			c = DriverManager.getConnection(url, user, password);
			return c;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return c;
		}
	}
	
	public static void main(String[] args) {
		System.out.println(new ConnectionDatabase().getConnection());
	}

}
