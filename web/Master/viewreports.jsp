<%-- 
    Document   : viewreports
    Created on : 18 Feb, 2018, 12:19:52 AM
    Author     : KasimPC
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="Beautiful.jpg">
        <h1>Reports are as follows:</h1>
        <font size="4">
        <ol>
            <li>
	<a href='#' onclick='javascript:window.open("http://localhost:38356/AMSystem/Master/Teacher/teacherpdfgenerator.jsp", "_blank", "scrollbars=1,resizable=1,height=300,width=450");' title='Pop Up'>Teacher Data Report </a>
                                </li>
                                <li>
	<a href='#' onclick='javascript:window.open("http://localhost:38356/AMSystem/Master/Student/Studentdatapdf.jsp", "_blank", "scrollbars=1,resizable=1,height=300,width=450");' title='Pop Up'>Student Data Report </a>
                                </li>
                                <li>
					<a href='#' onclick='javascript:window.open("http://localhost:38356/AMSystem/Master/Student/toprankerpdfreport.jsp", "_blank", "scrollbars=1,resizable=1,height=300,width=450");' title='Pop Up'> </a>
                                </li>
        </ol>
        
        
    </body>
</html>
