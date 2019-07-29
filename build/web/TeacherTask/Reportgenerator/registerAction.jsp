<%-- 
    Document   : addRecordAction
    Created on : 19 Jan, 2018, 2:10:39 PM
    Author     : KasimPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
         try
         {
                String s =request.getParameter("subject");
            String b =request.getParameter("stdroman");
            out.println(b);
            String c=request.getParameter("division");
            String dd= request.getParameter("dd");
            String d[]=request.getParameterValues("rollno");
            String status = request.getParameter("status");
             connection obj = new connection();
            Connection con=obj.getConnection();
            Statement st=null;
        st= con.createStatement();
     
        String loginid[]=request.getParameterValues("rowid");
          
                  
               for (int i=0;i<d.length;i++)
                       {
                       out.print(d[i]);
                      String sql;              
            
      //  int rowno=Integer.parseInt(RowId[i]);
                   
   sql ="insert into attendance(attdate,stdroman,divisionname,"
           + "rollno,status,subject) values('"+dd+"','"+b+"','"+c+"','"+d[i]+"','"+status+"','"+s+"')";
                       
           
        st.addBatch(sql);
               }
       int Attendance_records_Inserted[] = st.executeBatch();
       int count=Attendance_records_Inserted.length;
                       if(count>=1){
 
                %>
       <script>alert('Attendance Recorde Inserted'); 
 window.location.replace("http://localhost:38356/AMSystem/TeacherTask/Attendanceform.jsp");
         </script>
             

<%
   }
         }
   catch (Exception e){out.println(e);}   
       
      %>    

        
    </body>
</html>
