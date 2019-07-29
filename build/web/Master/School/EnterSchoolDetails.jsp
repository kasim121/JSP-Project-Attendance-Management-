
<%-- 
    Document   : insertStudent
    Created on : 16 Mar, 2016, 1:13:14 AM
    Author     : Anuksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>School Details</title>
        
    </head>
    <body background="7.jpg">
        
        <form action="EnterSchoolDetailsAction.jsp" method="post">
           <table cellpadding="2" width="20%" bgcolor="99FFFF" align="left"
cellspacing="2">
              
                
            
            <tbody>
                    <tr>
<td colspan=2>
<center><font size=4><b>School Details</b></font></center>
</td>
</tr>
             <tr><td> School Name :</td>
                 <td>
                     <input type="text" name="t1" size="70" required/>    
                 </td></tr>
               <tr><td> Address :</td>
                 <td>
                 
                     <textarea name="t2" rows="07" cols="50" required></textarea>
                 </td></tr>
             <tr><td> Contact No  :</td>
                 <td>
                 <input type="text" name="t3" size="60" required />
                 </td></tr>
              <tr><td> Email Address :</td>
                 <td>
                 <input type="text" name="t4" size="60" required />
                 </td></tr>
             <tr><td> <input type="submit"  value="Create"/>
                 
                 </td><td>
                 <input type="reset" value="Cancel"/>
                 </td>
                 </tr>

             
         </table></font>
        </form>
    </body>
</html>
