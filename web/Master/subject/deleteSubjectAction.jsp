<%-- 
    Document   : deleteSubjectAction
    Created on : 18 Feb, 2018, 10:02:53 PM
    Author     : KasimPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
                  <%
      try{connection obj = new connection();
         Connection con=obj.getConnection();
        
          String task =request.getParameter("txtbutton");
          if(task.equals("Delete"))
          {
         Statement st=null;
        st= con.createStatement();
        Statement st1= con.createStatement();
     
        String sid[]=request.getParameterValues("rowid");
          
                   for(int i=0;i<sid.length;i++)
                       {
                       //out.print(loginid[i]);
                      String sql;              
            
      //  int rowno=Integer.parseInt(RowId[i]);

               sql = " select * from subject where subid="+sid[i]+"";    
               ResultSet rs = st.executeQuery(sql);
               while(rs.next())
               {
                 
                   String a = rs.getString("subname");
               
                sql ="delete from subject where subname='"+a+"' "; 
            //    sql1="delete from teacherinfo where tid="+std[i]+"";
                      
         
                 
        st1.addBatch(sql);
      //  st1.addBatch(sql1);
        int no_records_deleted[] = st1.executeBatch();
        int count=no_records_deleted.length;
               
       
       
                       if(count>=1){
 
                %>
       <script>alert('  Subject Record deleted'); 
 window.location.replace("http://localhost:25130/AMSystem/Master/subject/deleteSubject.jsp");
         </script>
             
         <%
 }}}
  //out.println(no_records_deleted.length +" records deleted");
                             
        }
      else
          {
              //UODATE SECTION
   //  Statement st=null;
      //  st= con.createStatement();
        Statement st2= con.createStatement();
     
        
        String sid[]=request.getParameterValues("rowid");  
 
        
for(int i=0;i<sid.length;i++)
                       {
                       //out.print(loginid[i]);
                     String sql;              
             String sn=request.getParameter("subname"+sid[i]);
      //  int rowno=Integer.parseInt(RowId[i]);

               
   //sql =" update subject set subname='"+sn[i]+"' where subid= "+sid[i]+"";     
              out.println(sid[i]+sn);
            //    sql1="delete from teacherinfo where tid="+std[i]+"";
                      
         
                 
      //  st2.addBatch(sql);      //  st1.addBatch(sql1);
     //   int no_records_deleted[] = st2.executeBatch();int count=no_records_deleted.length;
           int count=0;
       
       
                       if(count>=1){
 
                %>
       <script>alert('  Subject Record Updated'); 
 window.location.replace("http://localhost:25130/AMSystem/Master/subject/deleteSubject.jsp");
         </script>
             
         <%
 }}}          
          }catch(Exception e){out.println("error="+e)    ;}  
      
                    
        %>
    </body>
</html>
