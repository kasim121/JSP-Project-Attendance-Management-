<%-- 
    Document   : addRecordAction
    Created on : 19 Jan, 2018, 2:10:39 PM
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
         try
         {
                          {
            //int a = Integer.parseInt(request.getParameter("srno"));
            String b =request.getParameter("stdroman");
            String c=request.getParameter("division");
            int d = Integer.parseInt(request.getParameter("StartRollNo"));
            int e = Integer.parseInt(request.getParameter("EndRollNo"));
             
             connection obj = new connection();
          
           
               String sql ="select count(*) from standardwiserollnumbers where  stdroman='"+b+"'and divisionname='"+c+"'and StartRollNo="+d+" and EndRollNo="+e+"";
               ResultSet rs = obj.getQuery(sql);
                while(rs.next()){
         if(rs.getInt(1)>=1)
                         {
    %>
    <br><br><br><%
    // out.println(txtenrollment+ "Student for "+txtpgmcode+ " is valid student ");
             
             %>  
             
     

         <%}
         else{                                                    {                              
                    Connection con=obj.getConnection();
               String sql1 ="insert into standardwiserollnumbers(stdroman,divisionname,StartRollNo,EndRollNo) values(?,?,?,?)";
               PreparedStatement ps=con.prepareStatement(sql1);
             
              ps.setString(1,b);
              ps.setString(2,c);
              ps.setInt(3,d);
              ps.setInt(4,e);
               int i = ps.executeUpdate();
               if(i>=1)
                                  {
                %>
       <script>alert('Record added'); 
           window.location.replace("http://localhost:38356/AMSystem/TeacherTask/addRecord.jsp");</script>
         <%}

                             else{
                %>
       <script>alert('Record already exist'); 
           window.location.replace("http://localhost:38356/AMSystem/TeacherTask/addRecord.jsp");</script>
         <%
               }  } 
         }}}}  
                          catch(Exception e){System.out.println(e);}
        %>
    </body>
</html>
