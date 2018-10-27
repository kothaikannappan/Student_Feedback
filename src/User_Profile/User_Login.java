package User_Profile;

public class User_Login {
	
	
		private String student_id;
		private String student_profile_name;
		private String stu_password;
		private String Modified_on;
		private String last_logon;


		public String getStudent_id() {
			return student_id;
		}

		public void setStudent_id(String student_id) {
			this.student_id = student_id;
		}

		public String getStudent_profile_name() {
			return student_profile_name;
		}

		public void setStudent_profile_name(String student_profile_name) {
			this.student_profile_name = student_profile_name;
		}

		public String getStu_password() {
			return stu_password;
		}

		public void setStu_password(String stu_password) {
			this.stu_password = stu_password;
		}

		public String getModified_on() {
			return Modified_on;
		}

		public void setModified_on(String modified_on) {
			Modified_on = modified_on;
		}

		public String getLast_logon() {
			return last_logon;
		}

		public void setLast_logon(String last_logon) {
			this.last_logon = last_logon;
		}
	}
