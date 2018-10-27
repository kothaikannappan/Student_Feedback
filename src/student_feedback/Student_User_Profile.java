package student_feedback;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import SQL_USER.Msql_User_profile;
import User_Profile.*;

public class Student_User_Profile {
	
	public User_Profile getDetails(String id)
	{
		User_Profile user=new User_Profile();
		Msql_User_profile Con=new Msql_User_profile();
		Connection myCon=Con.setupConnection();
		try {
			Statement stmt=myCon.createStatement();
			ResultSet resultSet = stmt.executeQuery("select * from user_profile where student_id='" + id + "'");
			if (resultSet.next()) {
			user.setUserID(resultSet.getString(1));
			user.setFirstName(resultSet.getString(2));
			user.setLastName(resultSet.getString(3));
			user.setFileBytes(resultSet.getBytes(4));
			}
		
		return user;
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return user;

}
	}
