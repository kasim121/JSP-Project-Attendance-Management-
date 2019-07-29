

<%@page import="java.sql.RowId"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="rollnumbersAction.jsp"></a>
       
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
 window.location.replace("http://localhost:38356/kasim/rollnumbers.jsp");
         </script>
             
         <%
 }}
        else
                       {
            String a =request.getParameter("stdRoman");
String b=request.getParameter("division");
int c = Integer.parseInt(request.getParameter("StartRollNo"));
int d = Integer.parseInt(request.getParameter("EndRollNo"));

          
              String loginid[]=request.getParameterValues("rowid");
          
                   for(int i=0;i<loginid.length;i++)
                       {
                       //out.print(loginid[i]);
                      String sql;              
            
      //  int rowno=Integer.parseInt(RowId[i]);
                   
                sql ="update StandardwiseRollNumbers set stdRoman='"+a+"' , division='"+b+"' ,startRollNo="+c+" , EndRollno="+d+" where id="+loginid[i]+"";
  st.addBatch(sql);
  }
      int no_records_deleted[] = st.executeBatch();      
        if(no_records_deleted.length>=1){
 
                %>
       <script>alert('   Record Updated'); 
 window.location.replace("http://localhost:38356/kasim/rollnumbers.jsp");
         </script>
             
         <%      }
  //out.println(no_records_deleted.length +" records deleted");
                             
        }}catch(Exception e){out.println("error="+e)    ;}  
              
        %>
    </body>
</html>
