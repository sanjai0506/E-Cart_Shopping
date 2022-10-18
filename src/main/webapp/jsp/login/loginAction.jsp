<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String email=request.getParameter("email");
String password=request.getParameter("password");

if("admin@gmail.com".equals(email) && "admin".equals(password))
{
	session.setAttribute("email",email);
	response.sendRedirect("../../admin/adminHome.jsp");
}
else {
	boolean userFound = false;
	try {
		Connection con=ConnectionProvider.getCon();
		Statement st = con.createStatement();
		String query = "select * from users where email='"+email+"' and password='"+password+"'";
		out.println(query);
		ResultSet rs=st.executeQuery(query);
		while (rs.next()) {
			userFound = true;
		}
		if (userFound==true) {
			session.setAttribute("email",email);
			response.sendRedirect("../../home.jsp");
		}
		else {
			response.sendRedirect("jsp/login/login.jsp?msg=invalid_credential");
		}
	}
	catch (Exception e) {
		out.println(e);
		response.sendRedirect("jsp/login/login.jsp?msg=server_error");
	}
}
%>
