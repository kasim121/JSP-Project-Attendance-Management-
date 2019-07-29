<%-- 
    Document   : teachingvarioussubject
    Created on : Nov 21, 2018, 8:32:04 PM
    Author     : KasimPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="20.jpg">
     <center>
        <h1>Register the Subject for teaching </h1>
        <font color="White" size="05">
        <form action="teachingvarioussubjectaction.jsp" method="POST" name="form1" onsubmit="return test2()">
            
            <table border="1" cellspacing="2" cellpadding="2" align="centre">
                <thead>
                    <tr>
                        <th colspan="2"><font color="black">Select the subject</th>
                        
                    </tr>
                </thead>
                <tbody bgcolor="cyan ">
                    <tr>
                     
                        <td colspan="2">
                            <select name="subjectcode" multiple="yes" >
		
        
                    <%
                    connection obj = new connection();
              Connection con=obj.getConnection();
          Statement s1 = con.createStatement();
            String sqlq="SELECT * FROM subject ";
           ResultSet re1 = s1.executeQuery(sqlq);
           out.println(sqlq);
           //out.println(re1);
               
  
        out.println("hello");
         while(re1.next()) {
             
      String un = re1.getString(1);
     String txtclass=re1.getString(2);
         %>
         <option value="<%=un%>" ><%=un+"-"+txtclass%></option>
        <%
       }
                      
      %>
                </select></td>
               

                         
                    </tr>
                     <tr>
                         <td><input type="submit" value="Register" /></td>
                         <td><input type="reset" value="Clear" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        </font>
        <br>
       </body>
       </html>