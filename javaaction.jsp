  
        <%
String  s1[]=request.getParameterValues("n1");
String  s2[]=request.getParameterValues("n2");
String  s3[]=request.getParameterValues("n3");
String  s4[]=request.getParameterValues("n4");
String  s5[]=request.getParameterValues("n5");
int count=0;
for(String s:s1)
{
if("javap".equals(s))
{
    ++count;
}
}
for(String s:s2)
{
if("javap".equals(s))
{
 ++count;
}
}

for(String s:s3)
{
if("javap".equals(s))
{
 ++count;
}
}

for(String s:s4)
{
if("javap".equals(s))
{
 ++count;
}
}
for(String s:s5)
{
if("javap".equals(s))
{
 ++count;
}
}
out.println("Result="+count);
%>
