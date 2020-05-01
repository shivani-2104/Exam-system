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
        <tr> <td style="font-size: 25">Q.4 :  which type of inheritance is not present in java  <br><br></td></tr>
        <tr> <td>1: &ensp;Single<input type="checkbox" value="Single" name="n4"> </td></tr>
        <tr> <td>2: &ensp;Multilevel<input type="checkbox" value="Multilevel" name="n4"> </td></tr>
        <tr> <td>3: &ensp;Multiple<input type="checkbox" value="Multiple" name="n4"> </td></tr>
        <tr> <td>4: &ensp;None of above<input type="checkbox" value="None of above" name="n4"> </td></tr>
        
        
         <%String  s1[]=request.getParameterValues("n1");%>
    <%String  s2[]=request.getParameterValues("n2");%>
    <%String  s3[]=request.getParameterValues("n3");%>
        
        <tr><td><input type="submit" value="Previous" name="Submit" formaction="javaaction.jsp" class="bbutton" style="margin-top:30px"> 
                <input type="submit" value="Next" name="Submit" formaction="java5.jsp" style="margin-left:500px;margin-top: 30px" class="bbutton" > </td></tr>
        
        </table>
        </center>
        </div>
   
</form>
    
       
    </body>
</html>
