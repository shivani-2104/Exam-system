<%@page import="java.sql.*"%>
<html>
        <head>
           <link rel="stylesheet" type="text/css" href="try.css">
           </head>
	<body>
             <div id="bod">
<%@include file="mainmenu2.jsp"%>
            <center>
	<table id='abc' cellpadding="12">
            
                <%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/try_db?characterEncoding=latin1","root","password");
			Statement st=con.createStatement();
			String q="select * from student_information";
			ResultSet res=st.executeQuery(q);
                        %>
                        <tr id="top">
				<td><%="Name"%></td>
				<td><%="RNO "%></td>
				<td><%="physics"%></td>
				<td><%="Chemistry"%></td>
				<td><%="Maths"%></td>
                                </tr>
                                <%
			while(res.next())
			{
                            %>
                        
                            
                                <tr>
				<td><%=res.getString(1)%></td>
				<td><%=res.getString(2)%></td>
				<td><%=res.getString(3)%></td>
				<td><%=res.getString(4)%></td>
				<td><%=res.getString(5)%></td>
                                </tr>
			<%}
                       out.println("</center>"); 
			con.close();
		}
		catch(Exception e)
		{
		out.println(e);
		}%>
                 
		</table>
                </center>
                </div>
        </body>
</html>
	
