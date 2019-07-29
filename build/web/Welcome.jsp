<%-- 
    Document   : Welcome
    Created on : 23 Dec, 2017, 11:40:54 AM
    Author     : KasimPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <frameset rows="25,75">
                <frame src="Top.jsp" scrolling="no"  frameborder="0"></frame>
        <frameset cols="20,80">
            <frame src="LeftAdminFrame.jsp" scrolling="yes" noresize frameborder="0" name="left_frame"></frame>
            <frame src="RightAdminFrame.jsp" scrolling="yes" noresize frameborder="0" name="right_frame"></frame>
    </frameset>
         </frameset>
</html>

   