<%-- 
    Document   : AddSubjectAction
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
            // int a=Integer.parseInt(request.getParameter("t1"));
             String b=request.getParameter("t2");
           //out.println("subid"+a+ " and subname is "+b)  ;
             connection obj = new connection();
          
           
               String sql ="select count(*) from subject where subname='"+b+"'";
               ResultSet rs = obj.getQuery(sql);
                while(rs.next()){
         if(rs.getInt(1)>=1)
                         { 
    %>
    <br><br><br><%
    // out.println(txtenrollment+ "Student for "+txtpgmcode+ " is valid student ");
             
             %>  
             <script>alert('Subject already exist '); 
               window.location.replace("http://localhost:25130/AMSystem/Master/subject/AddSubject.jsp");
           </script>
             %>
     

         <%}
         else{                                                    {                              
                    Connection con=obj.getConnection();
               String sql1 ="insert into subject (subname) values(?)";
               PreparedStatement ps=con.prepareStatement(sql1);
               out.println(sql1);
              
               ps.setString(1,b);
               int i = ps.executeUpdate();
               if(i>=1)
                                  {
                %>
       <script>alert('Subject data created'); 
           window.location.replace("http://localhost:25130/AMSystem/Master/subject/AddSubject.jsp");</script>
         <%}

                             else{
                %>
       <script>alert('Subject Data not created '); 
           window.location.replace("http://localhost:25130/AMSystem/Master/subject/AddSubject.jsp");</script>
         <%} 
         }}}}        catch(Exception e){System.out.println(e);}
        %>
    </body>
</html>
