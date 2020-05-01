<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("name");
String s2=request.getParameter("pass");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/try_db?characterEncoding=latin1","root","password");
Statement st=con.createStatement();
String q="select * from regis where name='"+s1+"' AND pass='"+s2+"'";
ResultSet res=st.executeQuery(q);
if(res.next())
{
response.sendRedirect("afterlogin.jsp");
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>