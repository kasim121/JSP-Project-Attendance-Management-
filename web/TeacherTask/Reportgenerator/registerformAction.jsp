<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="att11.jpg">
        <form action="formregister.jsp">
        <%
         try
         
         {
            String b =request.getParameter("stdroman");
             String s =request.getParameter("subject");
            out.println("b="+b);
            String c=request.getParameter("division");
            String d= request.getParameter("fdd");
            String t= request.getParameter("tdd");
            
            
            out.println(d+" and to date is"+ t);
             %>
             <table align="top" border="1" cellpadding="2" bgcolor="99FF">
            <tbody>
    
                  <tr>
                   <td>Standard:</td>
                        <td><select name="stdroman">
                         <option value="<%=b%>"><%=b%></option>
                            </select>
  <td>Select Date:<td>      
      <input type="text" name="fdd" value="<%=d%>" readonly>&nbsp;&nbsp;&nbsp;&nbsp;
                   
                   
        
      </td>
  </tr>              
                    <tr>
                        <td>Division:</td><td>
                            <select name="division"><option value="<%=c%>"> <%=c%></option></select>
                            
             </td></tr>
              <tr>
                          <td>Select Subject: &nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td><select name="subject">
                         <option value="<%=s%>"><%=s%></option>
                            </select></td></tr>
             
        <% 
             connection obj = new connection();
             //String sql = select str_to_date(attdate,'%Y-%m-%d') from attendance where str_to_date(attdate,'%Y-%m-%d') between '2018-11-01' and '2018-11-05'";
       String sql ="select * from attendance where  stdroman='"+b+"'and divisionname='"+c+"'";
               ResultSet rs = obj.getQuery(sql);
               int n1=0,n2=0;
                while(rs.next()){
              n1=Integer.parseInt(rs.getString("StartRollNo"));    
   n2=Integer.parseInt(rs.getString("EndRollNo"));                  
   //out.println("start"+n1);
   //out.println("End"+n2);
                }
                out.println("<table><td>");
               for(int i=n1;i<=n2;i++)
               {
                   
                   if(i==11 || i==21 || i==31 || i==41 || i==51 || i==61 || i==71 || i==81 || i==91 )
                       out.println("</td></tr><tr>");
                       %><td colspan=2>
                           <input type=checkbox name=rollno value="<%=i%>"><%=i%></td>
                       
                   
                                                      
           <%    
               }  %>  </tr></table><table><tr><td> Tick Mark  for </td><td> <select name="status">
            
            <option value="A">Absent</option>
            <option value="P">Present</option>
                     </select></td><tr><td>
     
                     <input type="submit"  value="submit"/></td></tr></tbody></table>
    <%
          }
        catch (Exception e){}
        %>
        
       <br><br><br> <br><br><br><br><br><br><br><br><br><br><br>
      </form>  
    </body>
</html>
 