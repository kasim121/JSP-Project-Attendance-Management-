
<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="b.jpg">
<font color="black" ><b>     <center>       <h1> Delete Student Records </h1>
        <form action="deleteStudentAction.jsp">
        <%
        try{
        connection obj = new connection();
               String sql ="select * from studentinfo ";
               ResultSet rs = obj.getScrollableResultSetQuery(sql);
               String sql1 ="select * from studentinfo";
               ResultSetMetaData rsmd=rs.getMetaData();
               ResultSet rs1 = obj.getQuery(sql1);
               int column=rsmd.getColumnCount();
               
            //if(rs.first()==false){out.println("No Teachers record exist");}
                             if(rs1!=null)
                               {   %>
                              <table border="1" cellpadding="2" width="20%" bgcolor="99FFFF" align="center"
cellspacing="2">
                                   <tr><th><input type="submit" name="txtbutton" value="Delete" style="background-color:red;font-weight:bold;color:#ffffff;"/></th>
                                    <% //for(int i=1;i<=column;i++)
                                                //     {
                                    %>
                                    <th> <%=rsmd.getColumnName(2)%></th>
                                    <th> <%=rsmd.getColumnName(1)%></th>
                                    <th> <%=rsmd.getColumnName(3)%></th>
                                    <th> <%=rsmd.getColumnName(4)%></th>
                                    <th> <%=rsmd.getColumnName(5)%></th>
                                    <th> <%=rsmd.getColumnName(6)%></th>
                                    <th> <%=rsmd.getColumnName(7)%></th>
                                    <th> <%=rsmd.getColumnName(8)%></th>
                                    <th> <%=rsmd.getColumnName(9)%></th>
                                   </tr>
                       <% while(rs1.next()){ %>
    <tr><td> <input type="checkbox" name="rowid" value="<%=rs1.getString("sid")%>"</td><%
                          //for(int i=1;i<=column;i++)
                            //                         {
        %>
        
        <td><%=rs1.getString("sid")%></td>
        <td><%=rs1.getString("sname")%></td>
        <td><%=rs1.getString("address")%></td>
         <td><%=rs1.getString("gender")%></td>
        <td><%=rs1.getString("emailid")%></td>
        <td><%=rs1.getString("mobno")%></td>
        <td><%=rs1.getString("divisionname")%></td>
        <td><%=rs1.getString("stdroman")%></td>
        <td><%=rs1.getString("rollno")%></td>
       
        
                       <%
                   //}
                          %></tr><%
               } 
               }
               else{out.println("No records exist");}
                                           
   rs.close();     }catch(Exception e){out.println("error="+e)    ;} 
        %>
                              </table>
        </form>
    </body>
</html>


