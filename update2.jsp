<%@page import="java.sql.*"%>
<%
	String s1 = request.getParameter("name");
        String s2 = request.getParameter("roll");

%>
<html>
    <body>
         <div id="bod">
        <form>
            <table id="abc">
<%	try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/try_db?characterEncoding=latin1","root","password");
			Statement st=con.createStatement();
			String q="select * from student_information where  name='"+s1+"' AND roll='"+s2+"'";
			ResultSet res=st.executeQuery(q);
                  
                       
			if(res.next())
			{
                           
                            out.println("<tr>");
                            out.println("<td>Name</td><td><input type='text' value='"+res.getString(1)+"' name='n1'></td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println("<td>Rollno</td><td><input type='text' value='"+res.getString(2)+"' name='n2'></td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println("<td>Physics</td><td><input type='text' value='"+res.getString(3)+"' name='n3'></td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println("<td>Chemistry</td><td><input type='text' value='"+res.getString(4)+"' name='n4'></td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println("<td>Maths</td><td><input type='text' value='"+res.getString(5)+"' name='n5'></td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th colspan='2'>  <input type='submit' value='Update' formaction='update3.jsp'>  </th> ");
                            out.println("</tr>");
                        %></table></form></div></body></html>
			<%}
			con.close();
		}
		catch(Exception e)
		{
		out.println(e);
		}
%>		
		
