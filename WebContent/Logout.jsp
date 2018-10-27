<%

if (session.getAttribute("Name")!=null)
{
	session.setAttribute("Name", null);
	String redirectLogin = "index.jsp";
	response.sendRedirect(redirectLogin);
	
}else{
	String redirectLogin = "index.jsp";
	response.sendRedirect(redirectLogin);
}

%>