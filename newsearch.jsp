<%@page import="java.sql.*"%>
<html>
<head><title>INSERT PAGE</title>
<link rel="stylesheet" type="text/css" href="try.css">
</head>
<body>
     <div id="bod">
<%@include file="mainmenu2.jsp"%>
<form action="newsearch.jsp">
<center>
<table id="abc">
<tr>
<td>Enter Name</td><td><input type="text" placeholder="Enter Name" name="name"></td>
</tr>
<tr>
<td>Enter Password</td><td><input type="password" placeholder="Enter Rollnumber" name="roll"></td>
</tr>
<tr>
<th colspan='3'><input type="submit" value="search" name="b1"></th>
</tr>
</table>
</center>
</form>
<center>

<%
    String s1=request.getParameter("b1");
    if(s1!=null)
    {
    String s11 = request.getParameter("name");
        String s2 = request.getParameter("roll");


	try
	{
                Class.forName("com.mysql.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/try_db?characterEncoding=latin1","root","password");
		Statement st=con.createStatement();
		String q="select * from student_information where  name='"+s11+"' AND roll='"+s2+"'";
		ResultSet res=st.executeQuery(q);
                %>
                <table cellpadding=12">
                <tr id="top">
				<td><%="Name"%></td>
				<td><%="RNO "%> </td>
				<td><%="physics"%></td>
				<td><%="Chemistry"%></td>
				<td><%="Maths"%></td>
                                </tr>
                               
                                
                <%
		if(res.next())
		{%>
                <tr>
				<td><%=res.getString(1)%></td>
				<td><%=res.getString(2)%></td>
				<td><%=res.getString(3)%></td>
				<td><%=res.getString(4)%></td>
				<td><%=res.getString(5)%></td>
                                </tr>
                                 </table>
                    
		<%
	        }
		con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
    }
    
%>
</center>
     </div>
</body>
</html>