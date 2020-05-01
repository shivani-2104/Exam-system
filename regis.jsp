<html>
<head><title>TRY</title>
<link rel="stylesheet" type="text/css" href="try.css">
<head>
<body>
    <div id="bod">
<%@include file="mainmenu.jsp"%>
<center>
<form action="regis2.jsp">
<table id="abc">
<tr>
<td>Enter Name</td><td><input type="text" placeholder="Enter Name" name="name"></td>
</tr>
<tr>
<td>Enter Password</td><td><input type="password" placeholder="Enter Password" name="pass"></td>
</tr>
<tr>
<td>Enter Email</td><td><input type="email" placeholder="Enter Email" name="email"></td>
</tr>
<tr>
<td>Enter contact no</td><td><input type="text" placeholder="Enter Contact number" name="contact"></td>
</tr>
<tr>
<td>Enter Gender</td><td><input type="radio">Male<input type="radio">FeMale</td>
</tr>
<tr>
<th colspan='3'><input type="Submit" id="t1"><input type="reset" id="t1"></th>
</tr>
</table>
</form>
</center>
</div>
</body>
</html>