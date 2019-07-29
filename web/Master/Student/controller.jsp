<%-- 
    Document   : controller
    Created on : Feb 26, 2018, 3:55:41 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        session.setAttribute("sname",request.getParameter("t1"));
                out.print(session.getAttribute("sname").toString());
                session.setAttribute("address",request.getParameter("t2"));
                session.setAttribute("email",request.getParameter("t3"));
                session.setAttribute("mobile",request.getParameter("t4"));
                session.setAttribute("gender",request.getParameter("gender"));
                response.sendRedirect("CreateStudent1.jsp");
                %>
    </body>
</html>
