<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("name");
String s2=request.getParameter("pass");
String s3=request.getParameter("email");
String s4=request.getParameter("contact");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/try_db?characterEncoding=latin1","root","password");
Statement st=con.createStatement();
String q="insert into regis values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')";
st.executeUpdate(q);
out.println("Record inserted successfully");
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>