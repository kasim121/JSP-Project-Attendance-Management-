<%-- 
    Document   : welcomeTeacher
    Created on : 17 Feb, 2018, 9:48:15 PM
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
            <frame src="../Top.jsp" scrolling="no" noresize frameborder="0"></frame>
        <frameset cols="20,80">
            <frame src="leftTeacherframe.jsp" scrolling="yes" noresize frameborder="0" name="left_frame"></frame>
            <frame src="RightTeacherframe.jsp" scrolling="yes" noresize frameborder="0" name="right_frame"></frame>
    </frameset>
         </frameset>
</html>

      
  

