<%-- 
    Document   : EnterCollegeDetailsAction
    Created on : Mar 20, 2016, 11:04:07 AM
    Author     : homepc
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
         try{
             String a=request.getParameter("t1");
             String b = request.getParameter("t2");
             int c = Integer.parseInt(request.getParameter("t3"));
             String d = request.getParameter("t4");
             String sql ="insert into schoolinfo values(?,?,?,?)";
             connection obj = new connection();
          
                Connection con=obj.getConnection();
         PreparedStatement ps=null;
        ps= con.prepareStatement(sql);
        ps.setString(1, a);
        ps.setString(2, b);
        ps.setInt(3, c);
        ps.setString(4, d);
     
               int i=ps.executeUpdate();
               
         if(i==1)
                         {
    %>
    <br><br><br><%
    // out.println(txtenrollment+ "Student for "+txtpgmcode+ " is valid student ");
             
             %>  
             <script>alert('School Details entered  '); 
               window.location.replace("http://localhost:38356/AMSystem/Master/School/EnterSchoolDetails.jsp");
           </script>
             %>
     

         <%}
         else{ %>                                                   {                              
             <script>alert('Some error occuered so School Details not entered  '); 
               window.location.replace("http://localhost:38356/AMSystem/Master/School/EnterSchoolDetails.jsp");
           </script>
             <%  }}
        catch(Exception e){System.out.println(e);}
        %>
    </body>
</html>
