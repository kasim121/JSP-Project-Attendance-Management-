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
            String a =request.getParameter("t1");
            String b=request.getParameter("t2");
            String c=request.getParameter("t3");
            String d =request.getParameter("gender");
            String e =request.getParameter("t4");
            int f = Integer.parseInt(e);
            String g =request.getParameter("stdroman");
            String h=request.getParameter("cid");
            int rn = Integer.parseInt(request.getParameter("rno"));
            out.println(a+"\n"+b+"\n"+c+"\n"+d+"\n"+f+"\n"+g+"\n"+h+"\n"+rn);
            
            connection obj = new connection();
          
           
               String sql ="select count(*) from studentinfo "
                       + "where  sname='"+a+"' and address='"+b+"'and "
                       + "gender='"+d+"' and emailid='"+c+"'and mobno="+f+" and "
                       + "divisionname='"+h+"' and stdroman='"+g+"' and rollno="+rn+" ";
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
               String sql1 ="insert into studentinfo"
                       + "(sname,address,gender,emailid,mobno,divisionname,stdroman,rollno)"
                       + "values(?,?,?,?,?,?,?,?)";
               PreparedStatement ps=con.prepareStatement(sql1);
             
              ps.setString(1,a);        
              ps.setString(2,b);
              ps.setString(3,d);
              ps.setString(4,c);
              ps.setInt(5,f);
              ps.setString(7,g);
              ps.setString(6,h);
              ps.setInt(8,rn);
              int i = ps.executeUpdate();
               if(i>=1)
                                  {
                %>
       <script>alert('Student added'); 
           window.location.replace("http://localhost:38356/AMSystem/Master/Student/CreateStudent1.jsp");</script>
         <%}

                             else{
                %>
       <script>alert('Student already exist'); 
           window.location.replace("http://localhost:38356/AMSystem/Master/Student/CreateStudent1.jsp");</script>
         <%
               }  } 
         }}}}  
                          catch(Exception e){out.println(e);}
        %>
    </body>
</html>
