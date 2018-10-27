package User_Profile;

public class User_Feedback {
	
	private String feedbackID;
	private String courseID;
	private String question;
	private String indicator;
	private String createdBy;
	private byte[] fileBytes;

	public User_Feedback() {
	}

	public String getFeedbackID() {
		return feedbackID;
	}

	public void setFeedbackID(String feedbackID) {
		this.feedbackID = feedbackID;
	}

	public String getCourseID() {
		return courseID;
	}

	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}

	public String getFeedbackQuestion() {
		return question;
	}

	public void setFeedbackQuestion(String question) {
		this.question = question;
	}

	public String getFeedbackIndicator() {
		return indicator;
	}

	public void setFeedbackIndicator(String indicator) {
		this.indicator = indicator;
	}
	
	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public byte[] getFileBytes() {
		return fileBytes;
	}

	public void setFileBytes(byte[] fileBytes) {
		this.fileBytes = fileBytes;
	}
}