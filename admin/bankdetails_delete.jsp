<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
 <%
 String a=request.getParameter("id");
 int z=s.stm.executeUpdate("delete from bank_details where b_id='"+a+"'");
 %>
 <script>
 alert("Bank Details Deleted Successfully");
 document.location="bankdetails_view.jsp";
 </script>