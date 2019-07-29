<%-- 
    Document   : deleteTeacherAction
    Created on : 11 Jan, 2018, 10:23:44 PM
    Author     : KasimPC
--%>

<%@page import="java.sql.RowId"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
                  <%
      try{
        connection obj = new connection();
         Connection con=obj.getConnection();
         Statement st=null;
        st= con.createStatement();
        Statement st1= con.createStatement();
     
        String loginid[]=request.getParameterValues("rowid");
          
                   for(int i=0;i<loginid.length;i++)
                       {
                       //out.print(loginid[i]);
                      String sql,sql1,sql2;              
            
      //  int rowno=Integer.parseInt(RowId[i]);

               sql2 = "select teacher_name from teacherinfo where tid="+loginid[i]+"";    
               ResultSet rs = st.executeQuery(sql2);
               while(rs.next())
               {
                   String tname = rs.getString("teacher_name");
               
                sql ="delete from LOGIN where loginid='"+tname+"'";
                sql1="delete from teacherinfo where tid="+loginid[i]+"";
                      
         
                 
        st1.addBatch(sql);
        st1.addBatch(sql1);
        int no_records_deleted[] = st1.executeBatch();int count=no_records_deleted.length;
               
       
       
                       if(count>=1){
 
                %>
       <script>alert('  Teachers Record deleted'); 
 window.location.replace("http://localhost:38356/AMSystem/Master/Teacher/deleteTeacher.jsp");
         </script>
             
         <%
 }}}
  //out.println(no_records_deleted.length +" records deleted");
                             
        }catch(Exception e){out.println("error="+e)    ;}  
              
        %>
    </body>
</html>
