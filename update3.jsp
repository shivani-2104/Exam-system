<%@page import="java.sql.*"%>
<%
                String s1 = request.getParameter("n1");
		String s2 = request.getParameter("n2");
		String s3 = request.getParameter("n3");
		String s4 = request.getParameter("n4");
		String s5 = request.getParameter("n5");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/try_db?characterEncoding=latin1","root","password");
			Statement st=con.createStatement();
			String q="update student_information set name='"+s1+"',physics='"+s3+"',chemistry='"+s4+"',maths='"+s5+"' where roll='"+s2+"'";
                        st.executeUpdate(q);
			out.println("Record updated successfully");
			con.close();
		}
		catch(Exception e)
		{
		out.println(e);
		}
%>