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
     
        String divid[]=request.getParameterValues("rowid");
          
                   for(int i=0;i<divid.length;i++)
                       {
                       //out.print(loginid[i]);
                      String sql;              
            
      //  int rowno=Integer.parseInt(RowId[i]);

               sql = " select * from division where divisionid="+divid[i]+"";    
               ResultSet rs = st.executeQuery(sql);
               while(rs.next())
               {
                   String sname = rs.getString("divisionname");
                   String s = rs.getString("stdroman");
               
                sql ="delete from division where divisionname='"+sname+"' and stdroman='"+s+"' and divisionid="+divid[i]+""; 
            //    sql1="delete from teacherinfo where tid="+std[i]+"";
                      
         
                 
        st1.addBatch(sql);
      //  st1.addBatch(sql1);
        int no_records_deleted[] = st1.executeBatch();
        int count=no_records_deleted.length;
               
       
       
                       if(count>=1){
 
                %>
       <script>alert('  Division Record deleted'); 
 window.location.replace("http://localhost:38356/AMSystem/Master/Division/deleteDivision.jsp");
         </script>
             
         <%
 }}}
  //out.println(no_records_deleted.length +" records deleted");
                             
        }
      else
          {
              //UODATE SECTION
     Statement st=null;
        st= con.createStatement();
        Statement st1= con.createStatement();
     
        String divid[]=request.getParameterValues("rowid");          
       String stdr[]=request.getParameterValues("stdroman");
        String divs[]=request.getParameterValues("divisionname");
for(int i=0;i<divid.length;i++)
                       {
                       //out.print(loginid[i]);
                      String sql;              
            
      //  int rowno=Integer.parseInt(RowId[i]);

               
     sql = " update division set divisionname='"+divs[i]+"' where stdroman = '"+stdr[i]+"' and divisionid="+divid[i]+"";     
                out.println(sql);
            //    sql1="delete from teacherinfo where tid="+std[i]+"";
                      
         
                 
        st1.addBatch(sql);
      //  st1.addBatch(sql1);
        int no_records_deleted[] = st1.executeBatch();int count=no_records_deleted.length;
           //int count=0;
       
       
                       if(count>=1){
 
                %>
       <script>alert('  Division Record Updated'); 
 window.location.replace("http://localhost:38356/AMSystem/Master/Division/deleteDivision.jsp");
         </script>
             
         <%
 }}}          
          }catch(Exception e){out.println("error="+e)    ;}  
      
                    
        %>
    </body>
</html>
