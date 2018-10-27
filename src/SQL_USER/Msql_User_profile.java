package SQL_USER;

import java.sql.Connection;
import java.sql.DriverManager;


public class Msql_User_profile{

	public Connection setupConnection()  {

		Connection connection = null;
		try {
			// This will load the MySQL driver, each DB has its own driver
			// Class.forName("com.mysql.jdbc.Driver");
			Class.forName("com.mysql.cj.jdbc.Driver");
			// Setup the connection with the DB

			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_feedback?useSSL=false", "root", "admin");
			
			
		} catch (Exception e) {
			System.out.println("Error setting up connectino");
			e.printStackTrace();
		}
		return connection;
	}		
	
	
}
