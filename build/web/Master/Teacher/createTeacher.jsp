<%--
    Document   : createTeacher
    Created on : 3 Jan, 2018, 1:26:26 AM
    Author     : KasimPC
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <script>
          function test2()
{
   
var p11 = document.form1.tid.value;
document.form1.userid.value=p11;

        var p1 = document.form1.txtpswd.value;
       var  p2= document.form1.txtrpswd.value;
      // alert(p1);
       //alert(p2);
  var n = p1.localeCompare(p2);
  //alert(n);
      if(n==0) return true;
   else{ alert('Passwords did not match');  return false;}
}

        //var a= document.
        </script>
    <body background="20.jpg">
        
        <form action="createTeacherAction.jsp" method="post" name='form1'>
        <table cellpadding="2" width="20%" bgcolor="99FFFF" align="right"
cellspacing="2">
              
                
            
            <tbody>
                    <tr>
<td colspan=2>
<center><font size=4><b>Teacher Registration Form</b></font></center>
</td>
</tr>
             <tr><td> Teacher Name:</td>
                 <td>
                 <input type="text" name="tid" size="50" required/>
                 </td></tr>
             <tr><td> Email:</td>
                 <td>
                 <input type="emailid" name="eid" size="50" required />
                 </td></tr>
             <tr><td> Mobile:</td>
                 <td>
                 <input type="text" name="num" size="50" required />
                 </td></tr>
             <tr><td> Qualification:</td>
                 <td>
                 <input type="qualificatin" name="quali" size="50" required />
                 </td></tr>
             <tr><td> Address:</td>
                 <td>
                 <input type="text" name="add" size="50" required />
                 </td></tr>
             <tr><td> Gender:</td>
                 <td>
                     Male:<input type="radio" value="male" name="gender"/>
                     Female:<input type="radio" value="female" name="gender"/>
                 </td></tr>
             <tr><td>Yr. of Exp.:</td>
                 <td>
                  <input type="text" name="exp" size="50" required />
                 </td></tr>
               <tr><td>Salary:</td>
                 <td>
                  <input type="text" name="salary" size="50" required />
                 </td></tr>
             
             <tr><td>User id:</td>
                 <td>
                 <input type="text" name="userid" size="50" onclick='test2()' readonly/>
                 </td></tr>
               <tr><td>Password:</td>
                 <td>
                 <input type="text" name="password" size="50" required />
                 </td></tr>
                
             <tr><td> </td>
                 
                 
                 <td>
                     <input type="submit"  value="Create" onmouseover="displaymessage()" style="background-color:#49743D;font-weight:bold;color:#ffffff;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <input type="reset" value="Cancel" style="background-color:#49743D;font-weight:bold;color:#ffffff;"/>
                 </td>
                 </tr>

             
              </table>
        </form>
    </body>
</html>
