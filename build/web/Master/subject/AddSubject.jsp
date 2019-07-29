<%-- 
    Document   : Class
    Created on : 29 Jan, 2018, 1:06:26 AM
    Author     : KasimPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body background="a.jpg">
        <form action="AddSubjectAction.jsp">
         <table cellpadding="2" width="20%" bgcolor="99FFFF" align="center"
cellspacing="2">
              
            <tbody>
                    <tr>
                    <td colspan=2><center><font size=4><b>Subject Form</b></font></center><td>
                    </tr>
                    
                   
                      <tr><td> Subject Name:</td>
                      <td><input type="text" name="t2" size="25" required/></td></tr>
                       
                      <tr>
                      <td><input type="submit" name="Submit"  value="Submit" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
                      </tr>
         </form>
    </body>
</html>
