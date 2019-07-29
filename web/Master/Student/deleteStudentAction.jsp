
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
     
        String si[]=request.getParameterValues("rowid");
          
                   for(int i=0;i<si.length;i++)
                       {
                       //out.print(loginid[i]);
                      String sql;              
            
      //  int rowno=Integer.parseInt(RowId[i]);

               sql = " select * from studentinfo where sid="+si[i]+"";    
               ResultSet rs = st.executeQuery(sql);
               while(rs.next())
               {
                   String s = rs.getString("sname");
                   String a = rs.getString("address");
                    String g= rs.getString("gender");
                   String e = rs.getString("emailid");
                    String m = rs.getString("mobno");
                   String d = rs.getString("divisionname");
                    String s1 = rs.getString("stdroman");
                   String r = rs.getString("rollno");
               
                sql ="delete from studentinfo where sname='"+s+"' and address='"+a+"' and gender='"+g+"' and emailid='"+e+"' and mobno="+m+" and divisionname='"+d+"' and stdroman='"+s1+"' and rollno="+r+" and sid="+si[i]+""; 
                      
         
                 
        st1.addBatch(sql);
        st1.addBatch(sql);
        int no_records_deleted[] = st1.executeBatch();int count=no_records_deleted.length;
               
       
       
                       if(count>=1){
 
                %>
       <script>alert('  Student Record deleted'); 
 window.location.replace("http://localhost:38356/AMSystem/Master/Student/deleteStudent.jsp");
         </script>
             
         <%
 }}}
  //out.println(no_records_deleted.length +" records deleted");
                             
        }catch(Exception e){out.println("error="+e)    ;}  
              
        %>
    </body>
</html>
