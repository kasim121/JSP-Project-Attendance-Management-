<%-- 
    Document   : login
    Created on : Dec 05, 2015, 12:50:09 PM
    Author     : KasimPC
--%>
<script> 
function validLogin() {
    
   if (document.form.txtusername.value == ""){
alert ( "Please enter Login Name." );
document.loginform.txtusername.focus();
return false;
}
if (document.form.txtuserpsswd.value == ""){
alert ( "Please enter password." );
document.userform.txtuserpsswd.focus();
return false;
}
if (document.form.txtusertype.value == 0){
alert ( "Please select user type" );
document.userform.txtusertype.focus();
return false;
}
else
   return true;
}
</script>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="mycss.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
    
        <title>Login Page </title>
    </head>
  
   <%@include file="header.jsp" %>


<div align=center>
    <body onloadeddata="window.resizeTo(500, 500)" bgcolor="cyan" background="landing_page_bg.png">
        
        <h1>Enter Login Details:</h1>
        <!--form name="form" action="LoginAction.jsp" method="POST" onsubmit="return validLogin();"-->
            <form name="form" action="LoginCheck.jsp" method="POST" onsubmit="return validLogin()">
            <center>
            <table border="1" color="brown" width="30%" cellpadding="1" bgcolor="#ffcc66">
                
                <tbody>  <tr>
                        <td><h2><center>USER TYPE:</h2></td><td>
                           &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                           <select name="txtusertype">
                               <OPTION value="0">select type</option>
                                                       <%
         try{
            connection obj = new connection();
                String sql ="select distinct usertype from login ";
               ResultSet rs = obj.getQuery(sql);
               out.print("rs="+rs);
while(rs.next())                          
       {
    
         %><option value="<%=rs.getString("usertype")%>"><%=rs.getString("usertype")%></option>
         <%
}}catch(Exception e){System.out.println(e);}
         %></select>
            </td>   <tr>
                        <td><h2><center>Login ID:</h2></td>
                        <td><center> <input type="text" name="txtusername" placeholder="Login ID" required/></td>
                    </tr>
                    <tr>
                        <td><h2><center>Password:</h2></td>
                        <td><center> <input type="password" name="txtuserpsswd" placeholder="Password"  required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"> <input type="image" src="login.jpg" alt="Submit" width="100" height="50"> 
                        &nbsp;&nbsp;<input type="image" src="reset.png" value="reset" width="100" height="50"></td>
                    </tr>
                    
                    <h3 align="center">Current Date and Time is :<br>
                <% java.util.Date d = new java.util.Date();
                out.println(d.toString()); %></h3>
                
                </tbody>
            </table>
                 
            </center>

            
           <br>
         
          
        </form>
    </body>
</html>
