<html>
    <head>
        <title></title>
    </head>
    
<%

String  s6[]=request.getParameterValues("n6");
int count=0;

for(String s:s6)
{
if("No".equals(s))
{
 ++count;
}
}
count=10;
out.println("Your Grades ="+count);
%>

    <body style="background-color: #000; height:100vh;" >
        <marquee><h1 style="color:white"><u>WELCOME TO SHREE VAISHNAV VIDYAPEETH VISHWAVIDYALAYA</u></h1></marquee>
        <img src ="logo.jpg" style="  display:block;  margin: auto; max-width: 150px;">
        <h1 style="color: #fff; font-size: 40px; text-align: center;">Your Result is <%=count%></h1>
    </body>
</html>