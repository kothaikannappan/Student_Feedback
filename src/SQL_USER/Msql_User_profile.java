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

			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/Java_assignment2?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
					"root", "Saibaba1995");
			
			
		} catch (Exception e) {
			System.out.println("Error setting up connection");
			e.printStackTrace();
		}
		return connection;
	}		
	
	
}
