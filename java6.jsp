<html>
    <head>
        
        <title>JAVA</title>
        <link rel="stylesheet" type="text/css" href="css2.css">
    </head>
    <body>
    <marquee><h1> WELCOME TO JAVA PROGRAMMING </h1> </marquee>
     
    <form>
    <div >
        <center>
        <table class="design">
            <tr><td><b>Indicating your answer<br><br></b></td></tr>
           <tr><td><p id="tx1">This test uses multiple-choice questions. To answer each multiple-choice question in your exam click your answer with the mouse.
                   <br><br></p></td></tr>
           <tr><td id="tx1"> Practice: </td>></tr>
           <tr><td>
           <ol>
               <li>Select an answer now. Notice that the open circle next to the answer you chose is now filled in.</li>
               <li>Change your answer by selecting different choices.</li>
               <li>Click Next to go on.</li>
           </ol></td></tr>
        <tr> <td style="font-size: 25">Q.5 :  Can static bloack can call non static method  <br><br></td></tr>
        <tr> <td>1: &ensp;Yes<input type="checkbox" value="Yes" name="n6"> </td></tr>
        <tr> <td>2: &ensp;No<input type="checkbox" value="No" name="n6"> </td></tr>
        <tr> <td>3: &ensp;Depend on situation<input type="checkbox" value="Depend on situation" name="n6"> </td></tr>
        <tr> <td>4: &ensp;May be<input type="checkbox" value="May be" name="n6"> </td></tr>
        
        
        <%String  s1[]=request.getParameterValues("n1");%>
    <%String  s2[]=request.getParameterValues("n2");%>
    <%String  s3[]=request.getParameterValues("n3");%>
    <%String  s4[]=request.getParameterValues("n4");%>
    <%String  s5[]=request.getParameterValues("n5");%>
    
        <tr><td><input type="submit" value="Previous" name="Submit" formaction="java5.jsp" class="bbutton" style="margin-top:30px"> 
                <input type="submit" value="Submit" name="Submit" formaction="newjsp.jsp" style="margin-left:500px;margin-top: 30px" class="bbutton" > </td></tr>
        
        </table>
        </center>
        </div>
   
</form>
    
       
    </body>
</html>
