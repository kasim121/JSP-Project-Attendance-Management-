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
try
{
    Statement st=null;

        st= con.createStatement();
        Statement st1= con.createStatement();
     
        String stdn[]=request.getParameterValues("rowid");
          
                   for(int i=0;i<stdn.length;i++)
                       {
                       //out.print(loginid[i]);
                      String sql;              
            
      //  int rowno=Integer.parseInt(RowId[i]);

               sql = " select * from standard where standardname='"+stdn[i]+"'";    
               ResultSet rs = st.executeQuery(sql);
               while(rs.next())
               {
                  String sn = rs.getString("standardname");
                   String s = rs.getString("stdroman");
               
                sql ="delete from standard where standardname='"+sn+"' and stdroman='"+s+"'"; 
            //    sql1="delete from teacherinfo where tid="+std[i]+"";
                      
         
                 
        st1.addBatch(sql);
      //  st1.addBatch(sql1);
        int no_records_deleted[] = st1.executeBatch();
        int count=no_records_deleted.length;
               
       
       
                       if(count>=1){
 
                %>
       <script>alert('  Standard Record deleted'); 
 window.location.replace("http://localhost:38356/AMSystem/Master/Standard/deleteStandard.jsp");
         </script>
             
         <%
 }}}
  //out.println(no_records_deleted.length +" records deleted");
                             
}//try ends
          catch(BatchUpdateException e){
                %>
       <script>alert('  Standard cannot be deleted BCoz it is used in another table '); 
 window.location.replace("http://localhost:38356/AMSystem/Master/Standard/deleteStandard.jsp");
         </script>
             
         <%
          }}
      else
          {
              //UODATE SECTION
     Statement st=null;
        st= con.createStatement();
        Statement st1= con.createStatement();
     
                
       String sn[]=request.getParameterValues("standardname");
        String sr[]=request.getParameterValues("stdroman");
for(int i=0;i<sn.length;i++)
                       {
                       //out.print(loginid[i]);
                      String sql;              
            
      //  int rowno=Integer.parseInt(RowId[i]);

               
               sql = " update standard set standardname='"+sn[i]+"' where stdroman = '"+sr[i]+"'";     
                out.println(sql);
            //    sql1="delete from teacherinfo where tid="+std[i]+"";
                      
         
                 
        st1.addBatch(sql);
      //  st1.addBatch(sql1);
        int no_records_deleted[] = st1.executeBatch();int count=no_records_deleted.length;
           //int count=0;
       
       
                       if(count>=1){
 
                %>
       <script>alert('  Standard Record Updated'); 
 window.location.replace("http://localhost:38356/AMSystem/Master/Standard/deleteStandard.jsp");
         </script>
             
         <%
 }}}          
          }catch(Exception e){out.println("error="+e)    ;}  
      
                    
        %>
    </body>
</html>
 