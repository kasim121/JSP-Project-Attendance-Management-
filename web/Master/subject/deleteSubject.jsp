<%-- 
    Document   : deleteSubject
    Created on : 18 Feb, 2018, 9:58:15 PM
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
<font color="Green" ><b>     <center>       <h1> Delete/Update Subject </h1>
        <form action="deleteSubjectAction.jsp">
        <%
        try{
        connection obj = new connection();
               String sql ="select * from subject ";
               ResultSet rs = obj.getScrollableResultSetQuery(sql);
               String sql1 ="select * from subject";
               ResultSetMetaData rsmd=rs.getMetaData();
               ResultSet rs1 = obj.getQuery(sql1);
               int column=rsmd.getColumnCount();
               
            //if(rs.first()==false){out.println("No Teachers record exist");}
                             if(rs1!=null)
                               {   %>
                                <table cellpadding="2" width="20%" bgcolor="99FFFF" align="center" cellspacing="2">
              
                                   <tr><th><input type="submit" name="txtbutton" value="Delete" style="background-color:red;font-weight:bold;color:#ffffff;"/></th>
                                    <% //for(int i=1;i<=column;i++)
                                                //     {
                                    %>  
                                    
                                    <th> <%=rsmd.getColumnName(2)%></th>
                             
                                   </tr>
                       <% while(rs1.next()){ %>
    <tr><td> <input type="checkbox" name="rowid" value="<%=rs1.getInt("subid")%>"</td><%
                          //for(int i=1;i<=column;i++)
                            //                         {
        %>
       <td><input type="text" name="subname"+<%=rs1.getInt("subid")%>+" value="<%=rs1.getString("subname")%>"/></td>
         <%
                   //}
                          %></tr><%
               } 
               }
               else{out.println("No records exist");}
                                           
   rs.close();     }catch(Exception e){out.println("error="+e)    ;}
        %><tr>
              <th><input type="submit"  name="txtbutton" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;" /></th>
                         
                    </tr>
   </table>
        </form>
    </body>
</html>
