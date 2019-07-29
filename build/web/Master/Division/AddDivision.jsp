<%-- 
    Document   : AddDivision
    Created on : 5 Jan, 2018, 10:36:07 AM
    Author     : KasimPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="c.jpg">
       <script type="text/javascript">
       
  
  function test()
{
   alert('hi');

        var p1 = document.form1.stdtype.value;
       
      if(p1==0) return false;
   else  return true;}
}
  </script>
       <form  name="form1" action="AddDivisionAction.jsp" method="POST">
        
        
       <table cellpadding="2" width="20%" bgcolor="99FFFF" align="center"
cellspacing="2">
              
                
            
            <tbody>
                    <tr>
                    <td colspan=2><center><font size=4><b>Division Form</b></font></center><td>
                    </tr>
                              
                                 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                           <tr>
                               <td>Standard:</td>
                                <td><select name="stdtype">
                               <OPTION value="0">select type </option>
                                                       <%
         try{
            connection obj = new connection();
                String sql ="select distinct stdroman from standard ";
               ResultSet rs = obj.getQuery(sql);
               out.print("rs ="+rs);
while(rs.next())                          
       {
    
         %><option value="<%=rs.getString("stdroman")%>"><%=rs.getString("stdroman")%></option>
         <%
}}catch(Exception e){System.out.println(e);}
         %></select></td></tr>
         
                             <tr> 
                             <td> Division:</td>
                             <td><select name="divtype">
                                  <option>A</option>
                                  <option>B</option>
                                  <option>C</option>
                                  <option>D</option>
                                  <option>E</option>
                                  <option>F</option>
                                  
                              </select></td></tr>
                              <tr>
                                  <td><input type="submit" name="Submit"  value="Submit" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>

                              </tbody>
    </form>
    </body>
</html>
