<%--
    Document   : createTeacher
    Created on : 3 Jan, 2018, 1:26:26 AM
    Author     : KasimPC
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <script>
          function test2()
{
   

        var p1 = document.form1.txtpswd.value;
       var  p2= document.form1.txtrpswd.value;
      // alert(p1);
       //alert(p2);
  var n = p1.localeCompare(p2);
  //alert(n);
      if(n==0) return true;
   else{ alert('Passwords did not match');  return false;}
}

        //var a= document.
        </script>
     <%
         try{
             String username=request.getParameter("tid");
             String teid = request.getParameter("eid");
             int tmno =Integer.parseInt(request.getParameter("num"));
             String tquali= request.getParameter("quali");
             String tadd = request.getParameter("add");
             String tgender = request.getParameter("gender");
             int tyrofexp= Integer.parseInt(request.getParameter("exp"));
             int tsalary= Integer.parseInt(request.getParameter("salary"));
             String tuid= request.getParameter("userid");
             String tpasswd= request.getParameter("password");
             //String tconfipasswd= request.getParameter("cpassword");
                          
             connection obj = new connection();
          
           
               String sql ="select count(*) from login where loginid='"+tuid+"' and usertype='Teacher'";
               ResultSet rs = obj.getQuery(sql);
                while(rs.next()){
         if(rs.getInt(1)>=1)
                         {
    %>
    <br><br><br><%
    // out.println(txtenrollment+ "Student for "+txtpgmcode+ " is valid student ");
             
             %>  
             <script>alert('Teacher already exist '); 
               window.location.replace("http://localhost:38356/AMSystem/Master/Teacher/ct.jsp");
           </script>
             %>
     

         <%}
         else{                                                    {                              
                    Connection con=obj.getConnection();
                   String sql1 ="insert into login values(?,?,?)";
               PreparedStatement ps=con.prepareStatement(sql1);
               ps.setString(1, tuid);
               ps.setString(2, tpasswd);
               ps.setString(3, "Teacher");
               int i = ps.executeUpdate();
                              String sql2 ="insert into teacherinfo(teacher_name,email,mobile,qualification,address,gender,yrofexp,salary) values(?,?,?,?,?,?,?,?)";
               PreparedStatement ps1=con.prepareStatement(sql2);
               ps1.setString(1, username);
               ps1.setString(2, teid);
               ps1.setInt(3, tmno);
               ps1.setString(4, tquali);
               ps1.setString(5, tadd);
               ps1.setString(6, tgender);
               ps1.setInt(7, tyrofexp);
               ps1.setInt(8, tsalary);
               int j=ps1.executeUpdate();
               
    
               if(i>=1 && j>=1)
                                  {
                %>
       <script>alert('Teachers data created'); 
           window.location.replace("http://localhost:38356/AMSystem/Master/Teacher/ct.jsp");</script>
         <%}

                             else{
                %>
       <script>alert('Teachers already exist'); 
           window.location.replace("http://localhost:38356/AMSystem/Master/Teacher/ct.jsp");</script>
         <%} 
         }}}}        catch(Exception e){System.out.println(e);}
        %>
    </body>
</html>
