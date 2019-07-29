<%-- 
    Document   : Top
    Created on : 20 Feb, 2018, 11:20:30 PM
    Author     : KasimPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body bgcolor="cyan">
        <table width=100% bgcolor=#ffcc66>
            <tr><td rowspan="2"><div align=left><img src="111.jpeg"></div></td>
    <td><center><font size="12">ATTENDANCE MANAGEMENT SYSTEM   </td></tr>
       
<td style="font-weight:bold;font-size:10pt;" align="center">
      <font color="white" size="4pt">
       </td>
        <% String user="";
if((session.getAttribute("userid")!=null))
{
 user = session.getAttribute("userid").toString();	}%>
   
<td style="font-weight:bold;font-size:10pt;" align="center">
      <font color="white" size="4pt">
        <%
        if(user.length()!=0)
      {     out.println("Welcome "+user);
%></td> 
 
<td align="right"> 
    <a href="LOGIN.jsp" target="_top"><font color="white" size="4pt"><b>Logout</font></a>
 </td></tr>
<%}%>
</table>
    </body>
</html>
