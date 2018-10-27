package student_feedback;

import User_Profile.*;

import java.sql.*;

import SQL_USER.*;

public class Login {

	public User_Login check_Login(String uName,String pass) 
	{
		User_Login usr_Login=new User_Login();
		Msql_User_profile Con=new Msql_User_profile();
		Connection myCon=Con.setupConnection();
		try {
			Statement stmt=myCon.createStatement();
			ResultSet resultSet = stmt.executeQuery("select * from user_stu_login where student_id='" + uName + "' and stu_password='" + pass + "'");
			if (resultSet.next()) {
				usr_Login.setStudent_id(resultSet.getString(1));
				usr_Login.setStudent_profile_name(resultSet.getString(2));
			}
			else
			{
			return null;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return usr_Login;
	}
}
