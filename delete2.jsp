<%@page import="java.sql.*"%>
<%
		try
		{
			String s1=request.getParameter("name");
			String s2=request.getParameter("roll");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/try_db?characterEncoding=latin1","root","password");
			Statement st=con.createStatement();
			String q="delete  from student_information where name='"+s1+"' AND roll='"+s2+"'";
			st.executeUpdate(q);
		        out.println("<p>delete successfullys</p>");
			con.close();
		}
		catch(Exception e)
		{
		       out.println(e);
		}
%>	