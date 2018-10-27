package student_feedback;

import User_Profile.*;

import java.sql.*;

import SQL_USER.*;

public class Feedback {

	public User_Feedback getFeedback() 
	{
		User_Feedback usr_Feedback=new User_Feedback();
		Msql_User_profile Con=new Msql_User_profile();
		Connection myCon=Con.setupConnection();
		try {
			Statement stmt=myCon.createStatement();
			ResultSet resultSet = stmt.executeQuery("select * from feedback where indicator=1");
			if (resultSet.next()) {
				usr_Feedback.setFeedbackID(resultSet.getString(1));
				usr_Feedback.setCourseID(resultSet.getString(2));
				usr_Feedback.setFeedbackQuestion(resultSet.getString(3));
				usr_Feedback.setFeedbackIndicator(resultSet.getString(4));
				usr_Feedback.setCreatedBy(resultSet.getString(5));
			}
			else
			{
			return null;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return usr_Feedback;
	}
}