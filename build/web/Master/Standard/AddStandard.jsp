<%-- 
    Document   : AddStandard
    Created on : 4 Jan, 2018, 9:18:01 PM
    Author     : KasimPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="h.jpg">
        <form  action="AddStandardAction.jsp" method="POST">
        
        
        <table cellpadding="2" width="20%" bgcolor="99FFFF" align="center"
cellspacing="2">
              
                
            
            <tbody>
                    <tr>
                    <td colspan=2><center><font size=4><b>Standard Registration Form</b></font></center><td>
                    </tr>
                    
                    <tr><td> Standard Name:</td>
                 <td>
                 <input type="text" name="t1" size="25" required/>
                 </td></tr>
                     
                      <tr><td> Standard Roman:</td>
                 <td>
                 <input type="text" name="t2" size="25" required/>
                 </td></tr>
                     
                       <th><input type="submit" name="txtbutton"  value="Submit" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></th>
        </table>
    </form>
    </body>
</html>
