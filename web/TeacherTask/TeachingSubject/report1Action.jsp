<%-- 
    Document   : report1Action
    Created on : 1 Mar, 2018, 1:58:37 AM
    Author     : KasimPC
--%>


 <%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <a href="Attendanceform.jsp"></a>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
<body background="21.jpg">
   
        <form  action="AttendanceformAction.jsp" method="POST">
            
            <% String b ="",c="";
           //     b = session.getAttribute("std").toString() ;
            //    c = session.getAttribute("division").toString() ;
            //   out.println("b=="+b);
                connection obj = new connection();
             //   connection obj1 = new connection();
                String sql ="select * from standard  order by stdroman asc";
                String sql1 ="select distinct divisionname from division";
                String sql2 ="select distinct subname from subject";
     
      ResultSet rs = obj.getQuery(sql);
      ResultSet rs1 = obj.getQuery(sql1);
      ResultSet rs2 = obj.getQuery(sql2);
     %>
<table cellpadding="1" width="40%" bgcolor="99FF" align="top"
cellspacing="4">
              
                
            
            <tbody>
                    <tr>
<td colspan=2>
<center><font size=4><b>Assigned Roll Number </b></font></center>
</td>
</tr>
                  
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
  
  <td>Select Date:<td>
      <input type="date" name="dd" value="set Date:"/>&nbsp;&nbsp;&nbsp;&nbsp;
                   
                   
        
      </select></td>
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
 </tr><br><br><br>
   
   
                      <tr>
                          <td>Select Subject: &nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td><select name="subject">
                         <option value="0">select subject</option>
                         <%
            while(rs2.next())
        {
                    String subject1=rs2.getString(1);
       //String standard2=rs.getString(1);
        
        %>
        <option value="<%=subject1%>" ><%=subject1%></option> 
        <%
    }
  
        %>
  
                   
                   
       
    </select>
  </td>
  </tr>              
                <tr>
                  <td><input type="submit" name="txtbutton" value="DisplayRollNo:"/></td>        
               
                </tr>            
            </tbody>
            
        </table>


                                   
                                       
                            
    </form>
    </body>
</html>




