<%@page import="User_Profile.*"%>

<%@page import="student_feedback.*"%>


<%@ page import="java.util.*" %> 
<%@ page import="java.io.*" %> 
<%
String uName = request.getParameter("username");
String uPassword = request.getParameter("pass");
String redirectLogin = "index.jsp";
String redirectProfile = "User_profile.jsp";

User_Login user=new User_Login();
Login l=new Login();
user=l.check_Login(uName, uPassword);
if(user==null)
{
	response.sendRedirect(redirectLogin);
	session.setAttribute("Name",null);
}
else
{
// 	System.out.println(user.getStudent_id());
// 	System.out.println(user.getStudent_profile_name());
	session.setAttribute("Name",user.getStudent_id());
	response.sendRedirect(redirectProfile);

}

%>
