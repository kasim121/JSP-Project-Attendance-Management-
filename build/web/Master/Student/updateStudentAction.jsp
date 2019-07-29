<%-- 
    Document   : updateTeacherAction
    Created on : 8 Jan, 2018, 2:43:41 PM
    Author     : KasimPC
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="cyan">
    <%
          try{
             int no=Integer.parseInt(request.getParameter("cid"));
             
             String s= request.getParameter("sname");
             String g= request.getParameter("gender");
             int m=Integer.parseInt(request.getParameter("mobno"));
             String e= request.getParameter("eid");
             String a = request.getParameter("add");
             String d = request.getParameter("division");
             String s1=request.getParameter("std");
             int r=Integer.parseInt(request.getParameter("rollno"));
             
             //String tuid= request.getParameter("userid");
             //String tpasswd= request.getParameter("password");
             //String tconfipasswd= request.getParameter("cpassword");
                          
                    connection obj = new connection();
     String sql="update studentinfo set sname='"+s+"',emailid='"+e+"',mobno='"+m+"' ,divisionname='"+d+"',address='"+a+"',gender='"+g+"',stdroman='"+s1+"',rollno='"+r+"' where sid="+no+"";
    
          
              Connection con=obj.getConnection();
       int count=  con.createStatement().executeUpdate(sql);
       /*
         
                        
             PreparedStatement ps=null;
        ps= con.prepareStatement(sql);
         ps.setInt(1,txtenrollment);
          ps.setString(2,txtstudentname);
          ps.setString(3,txtaddress);
          ps.setInt(4,txtContact);
          ps.setString(5,txtregcode);
          ps.setString(6,txtSccode);
          ps.setString(7,pgmcode);
          ps.setString(8,txtyearsem);
          ps.setString(9,txtfee);
         
        int count = ps.executeUpdate();*/
        out.println("One Student Record Updated");
//out.println(txtenrollment+" Students Details Entered"); 

     
%><br><a href="updateStudent.jsp">Back</a>
      <%
             
       
          }  catch(Exception e){out.println(e);}
        
%>           
    </body>
</html>

