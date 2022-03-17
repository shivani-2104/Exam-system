<%@page import="java.sql.*"%>
<%
String s1 = request.getParameter("sname");
String s2 = request.getParameter("sroll");
String s3 = request.getParameter("physics");
String s4 = request.getParameter("chemistry");
String s5 = request.getParameter("maths");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/try_db?characterEncoding=latin1","root","password");
Statement st=con.createStatement();
String q="insert into student_information values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')";
st.executeUpdate(q);
out.println("Record inserted successfully");
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>