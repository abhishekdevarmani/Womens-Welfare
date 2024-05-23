<title>Loggingout...</title>
<%
session.removeAttribute("uname");
session.invalidate();
out.println("<script>alert('Logged Out Successfully');document.location='login.jsp';</script>");
%>