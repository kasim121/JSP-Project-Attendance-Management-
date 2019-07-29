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
             String username=request.getParameter("tid");
             String teid = request.getParameter("eid");
             String tmno = request.getParameter("num");
             String tquali= request.getParameter("quali");
             String tadd = request.getParameter("add");
             String tgender = request.getParameter("gender");
             int tyrofexp= Integer.parseInt(request.getParameter("exp"));
             int tsalary= Integer.parseInt(request.getParameter("salary"));
             //String tuid= request.getParameter("userid");
             //String tpasswd= request.getParameter("password");
             //String tconfipasswd= request.getParameter("cpassword");
                          
                    connection obj = new connection();
     String sql="update teacherinfo set teacher_name='"+username+"',Email='"+teid+"',Mobile="+tmno+" ,Qualification='"+tquali+"',Address='"+tadd+"',Gender='"+tgender+"',YrofExp="+tyrofexp+",Salary="+tsalary+" where tid="+no+"";
    
          
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
        out.println("One Teacher Record Updated");
//out.println(txtenrollment+" Students Details Entered"); 

     
%><br><a href="updateTeacher.jsp">Back</a>
      <%
             
       
          }  catch(Exception e){out.println(e);}
        
%>           
    </body>
</html>

