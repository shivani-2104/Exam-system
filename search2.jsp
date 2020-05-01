<%@page import="java.sql.*"%>
<%
	String s1 = request.getParameter("name");
        String s2 = request.getParameter("roll");


	try
	{
                Class.forName("com.mysql.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/try_db?characterEncoding=latin1","root","password");
		Statement st=con.createStatement();
		String q="select * from student_information where  name='"+s1+"' AND roll='"+s2+"'";
		ResultSet res=st.executeQuery(q);
		if(res.next())
		{
		out.println(res.getString(1));
		out.println(res.getString(2));
		out.println(res.getString(3));
		out.println(res.getString(4));
		out.println(res.getString(5));
	        }
		con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>		
		