<%-- 
    Document   : rollnumbers
    Created on : Jan 16, 2018, 2:19:12 PM
    Author     : KasimPC

--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   
    
    
    <body background="b.jpg">
<font color="Green" ><b>            <h1>Delete/Update Assigned:</h1>
        <form action="rollnumbersAction.jsp">
        <%
        try{
        connection obj = new connection();
               String sql ="select * from StandardwiseRollNumbers ";
               ResultSet rs = obj.getQuery(sql);
             ResultSetMetaData rsmd = rs.getMetaData();
             int column = rsmd.getColumnCount();
              
                             if(rs!=null)
                               {   %>
                               <table border="1">
                                   <tr><th><input type="submit" name="txtbutton" value="Delete"/>
                                       <input type="submit" name="txtbutton" value="Update"/></th>
                                        <!--th>Sr. No.</th-->
                                       <th>Standard</th>
                                       <th>Division </th>
                                        <th>Starting Roll No</th>
                                         <th>Ending Roll No</th>
                                       
                                   </tr>
                       <% while(rs.next()){ %>
    <tr><td> <input type="checkbox" name="rowid" value="<%=rs.getInt(1)%>"</td>
     <td><input type="text" name="stdroman" value="<%=rs.getString(2)%>"/></td>
     <td><input type="text" name="Division" value="<%=rs.getString(3)%>"/></td>
      <td><input type="text" name="Starting Roll No" value="<%=rs.getString(4)%>"/></td>
       <td><input type="text" name="Ending Roll No" value="<%=rs.getString(5)%>"/></td>
     
                       <%
                   
                          %></tr><%
               } }
               
               else{out.println("No records exist");}
                                           
   rs.close();     }catch(Exception e){out.println("error="+e)    ;}
        %>
                               </table>
        </form>
    </body>
</html>

  