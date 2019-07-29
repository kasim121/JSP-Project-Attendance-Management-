<%-- 
    Document   : AddDivisionAction
    Created on : 5 Jan, 2018, 10:47:35 AM
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
             String standardtype=request.getParameter("stdtype");
             String division=request.getParameter("divtype");
           out.println("STD"+standardtype+ " and div is "+division)  ;
             connection obj = new connection();
          
           
               String sql ="select count(*) from division where divisionname='"+division+"' and stdroman='"+standardtype+"'";
               ResultSet rs = obj.getQuery(sql);
                while(rs.next()){
         if(rs.getInt(1)>=1)
                         { 
    %>
    <br><br><br><%
    // out.println(txtenrollment+ "Student for "+txtpgmcode+ " is valid student ");
             
             %>  
             <script>alert('Division already exist '); 
               window.location.replace("http://localhost:38356/AMSystem/Master/Division/AddDivision.jsp");
           </script>
             %>
     

         <%}
         else{                                                    {                              
                    Connection con=obj.getConnection();
               String sql1 ="insert into division(divisionname,stdroman) values(?,?)";
               PreparedStatement ps=con.prepareStatement(sql1);
               ps.setString(2,standardtype);
              
               ps.setString(1,division);
               int i = ps.executeUpdate();
               if(i>=1)
                                  {
                %>
       <script>alert('Division data created'); 
           window.location.replace("http://localhost:38356/AMSystem/Master/Division/AddDivision.jsp");</script>
         <%}

                             else{
                %>
       <script>alert('Division Data not created '); 
           window.location.replace("http://localhost:38356/AMSystem/Master/Division/AddDivision.jsp");</script>
         <%} 
         }}}}        catch(Exception e){System.out.println(e);}
        %>
    </body>
</html>
