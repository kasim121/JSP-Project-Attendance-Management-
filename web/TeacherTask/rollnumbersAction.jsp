

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
        String Task = request.getParameter("txtbutton");
        out.println(Task);
        if(Task.equals("Delete"))
                {
        String loginid[]=request.getParameterValues("rowid");
          
                   for(int i=0;i<loginid.length;i++)
                       {
                       //out.print(loginid[i]);
                      String sql;              
            
      //  int rowno=Integer.parseInt(RowId[i]);
                   
                sql ="delete from StandardwiseRollNumbers where id="+loginid[i]+"";
                      
         
                       
           
        st.addBatch(sql);
               }
       int no_records_deleted[] = st.executeBatch();
       int count=no_records_deleted.length;
                       if(count>=1){
 
                %>
       <script>alert('   Record deleted'); 
 window.location.replace("http://localhost:38356/AMSystem/TeacherTask/rollnumbers.jsp");
         </script>
             
         <%
 }}
        else
                       {
            //int a = Integer.parseInt(request.getParameter("srno"));
            String b[] =request.getParameterValues("stdroman");
            String c[]=request.getParameterValues("divisionname");
            String d[] = request.getParameterValues("StartRollNo");
            String e[] = request.getParameterValues("EndRollNo");

          
              String loginid[]=request.getParameterValues("rowid");
          
                   for(int i=0;i<loginid.length;i++)
                       {
                out.print(loginid[i]);
                out.println(b[i]);
                //String sql1= "select stdroman from standard where "
                //+c[i]+d[i]);
                      String sql;              
            
      //  int rowno=Integer.parseInt(RowId[i]);
                   
   sql ="update StandardwiseRollNumbers set stdroman='"+b[i]+"' , divisionname='"+c[i]+"' ,startRollNo="+d[i]+"' , EndRollno="+e[i]+" where id="+loginid[i]+"";
                out.println(sql);
  st.addBatch(sql);
  }
      int no_records_deleted[] = st.executeBatch();      
        if(no_records_deleted.length>=1){
 
                %>
       <script>alert('   Record Updated'); 
 window.location.replace("http://localhost:38356/AMSystem/AttendanceTask/rollnumbers.jsp");
         </script>
             
         <%      }
  //out.println(no_records_deleted.length +" records deleted");
                             
        }}catch(Exception e){out.println("error="+e)    ;}  
              
        %>
    </body>
</html>
