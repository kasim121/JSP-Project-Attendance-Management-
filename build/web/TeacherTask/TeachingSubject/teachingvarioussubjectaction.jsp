<%-- 
    Document   : teachingvariouscourseaction
    Created on : Nov 21, 2018, 11:55:17 PM
    Author     : KasimPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="cyan">
        
        
      <% try{
          String userid = session.getAttribute("userid").toString();
      
      String txtsubject[]=request.getParameterValues("subjectcode");
                    
                    connection obj = new connection();
              Connection con=obj.getConnection();
          Statement s1 = con.createStatement();
          for(int i=0;i<txtsubject.length;i++)
                           {
            String sqlq="SELECT count(*) FROM teacherteachingsubject where SubjectCode='"+txtsubject[i]+"'";
            ResultSet re1 = s1.executeQuery(sqlq);
        
           int count=0;
         while(re1.next()) {
                 count = re1.getInt(1);
        

         }
         if(count==0)
                         {
             String sql="insert into teacherteachingsubject values('"+userid+"','"+txtsubject[i]+"')";
                       Statement s2 = con.createStatement();
             int j= s2.executeUpdate(sql);
           //out.println(j + "records inserted");
             %>
             <script>
                 alert('Subject Registered');
                 window.location.replace("http://localhost:38356/AMSystem/TeacherTask/TeachingSubject/teachingvarioussubject.jsp");
             </script><%
             
         }
             else {String sql3="SELECT TName FROM teacherteachingsubject where SubjectCode='"+txtsubject[i]+"'";
           Statement s3 = con.createStatement();
             ResultSet re3 = s3.executeQuery(sql3);
             String tname="";
                    while(re3.next()) {  tname=re3.getString("TName");}
             if(tname.equals(userid)){
             
                    %>
                    <script>
                        var a = '<%=txtsubject[i]%>';
                        var b= '<%=tname%>';
                       alert(a+'  is already registered by You - '+b);
                   window.location.replace("http://localhost:38356/AMSystem/TeacherTask/TeachingSubject/teachingvarioussubject.jsp");
              </script>
                    <% }else{ %>
                                        <script>
                        var a = '<%=txtsubject[i]%>';
                        var b= '<%=tname%>';
                       alert(a+'  is already registered by  another teacher- '+b);
                   window.location.replace("http://localhost:38356/AMSystem/TeacherTask/TeachingSubject/teachingvarioussubject.jsp");
              </script>

                    
<%              

}
                                       }
             }             }
catch(Exception e){out.println(e);}                                      
      %>
               
      
    </body>
</html>