<%-- 
    Document   : addRecordAction
    Created on : 19 Jan, 2018, 12:04:25 AM
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
         try{
             String standard=request.getParameter("AddStandard");
             String stdrmn=request.getParameter("roman");
             
             connection obj = new connection();
          
           
               String sql ="select count(*) from standard where standardname='"+standard+"' and stdroman='"+stdrmn+"'";
               ResultSet rs = obj.getQuery(sql);
                while(rs.next()){
         if(rs.getInt(1)>=1)
                         {
    %>
    <br><br><br><%
    // out.println(txtenrollment+ "Student for "+txtpgmcode+ " is valid student ");
             
             %>  
             <script>alert('Standard already exist '); 
               window.location.replace("http://localhost:38356/AMSystem/Master/Standard/AddStandard.jsp");
           </script>
             %>
     

         <%}
         else{                                                    {                              
                    Connection con=obj.getConnection();
               String sql1 ="insert into standard values(?,?)";
               PreparedStatement ps=con.prepareStatement(sql1);
               ps.setString(1,standard);
              
               ps.setString(2,stdrmn);
               int i = ps.executeUpdate();
               if(i>=1)
                                  {
                %>
       <script>alert('Standard data created'); 
           window.location.replace("http://localhost:38356/AMSystem/Master/Standard/AddStandard.jsp");</script>
         <%}

                             else{
                %>
       <script>alert('Standard already exist'); 
           window.location.replace("http://localhost:38356/AMSystem/Master/Standard/AddStandard.jsp");</script>
         <%} 
         }}}}        catch(Exception e){System.out.println(e);}
        %>
    </body>
</html>
