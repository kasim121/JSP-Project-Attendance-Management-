<%-- 
    Document   : LoginCheck
    Created on : 05 Dec, 2017, 10:10:23 AM
    Author     : KasimPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
      <%
            String username = request.getParameter("txtusername");
            String password = request.getParameter("txtuserpsswd");
             String utype = request.getParameter("txtusertype");
           out.println("Checking login<br>");
            if (username == null || password == null || utype== null) {
 
                out.print("Invalid paramters ");
            }
           else
                             {
               connection obj = new connection();
               String sql ="select * from login where loginid='"+username+"' and password='"+password+"' and usertype='"+utype+"'";
               ResultSet rs = obj.getQuery(sql);
               boolean flag=rs.next();
               if(flag)
                               {              
   session.setAttribute("userid", username);               
if(utype.equalsIgnoreCase("administrator"))               
                   response.sendRedirect("Welcome.jsp");
    else if(utype.equalsIgnoreCase("teacher"))
                   response.sendRedirect("TeacherTask/WelcomeTeacher.jsp");
    
    
        
        
             
            }
                             else 
                   {
                   out.println("<script language='javascript'>alert('Invalid Username/Password');window.location.href='LOGIN.jsp';</script>");

                                           
                   //response.sendRedirect("loginfail.jsp");
                        
               
                          }
           }
 
 %> 
</body>
</html>
