
<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
<body background="c.jpg">
        <form  action="addRecordAction.jsp" method="POST">
            <%
                
                connection obj = new connection();
                connection obj1 = new connection();
                String sql ="select * from standard";
                String sql1 ="select distinct divisionname from division";
     
      ResultSet rs = obj.getQuery(sql);
      ResultSet rs1 = obj1.getQuery(sql1);
     %>
       <table cellpadding="2" width="20%" bgcolor="99FFFF" align="left"
cellspacing="2">
            
                
            
            <tbody>
            
                     <h1 align="left">Assigned Roll Numbers:</h1>
                    
         <tr>       
                    <td>Standard:</td>
                    
                       <td><select name="stdroman">
        <option value="0">select Standard</option>
        <%
            while(rs.next())
        {
                    String standard1=rs.getString(2);
       //String standard2=rs.getString(1);
        
        %>
         <option value="<%=standard1%>" ><%=standard1%></option>
        <%
    }
  
        %>
    </select>
  </td>
                </tr>
                 <tr>
                    <td>Division:</td>
                    <td><select name="division">
                               <OPTION value="0">select division</option>
                    <%
            while(rs1.next())
        {
                    String division1=rs1.getString(1);
       //String standard2=rs.getString(1);
        
        %>
         <option value="<%=division1%>" ><%=division1%></option>
        <%
    }
  
        %>
    </select>
  </td>
                    
                </tr>
                    <td>Starting Roll No:</td>
                    <td><input type="text" name="StartRollNo"/></td>
                </tr>
                <tr>
                   <td>Ending Roll No:</td>
                    <td><input type="text" name="EndRollNo"/></td>
                    
                    <td><input type="submit" name="txtbutton" value="Add"/></td>
                </tr>
                
            </tbody>
        </table>

                                     
                                       
                            
    </form>
    </body>
</html>
