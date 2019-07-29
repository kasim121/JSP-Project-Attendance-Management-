<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
 
    
<body background="20.jpg">
    
    <form action="CreateStudent1.jsp"  method="post">
                            
        <table cellpadding="2" width="20%" bgcolor="99FFFF" align="center"
cellspacing="2">
              
                
            
            <tbody>
                    <tr>
<td colspan=2>
<center><font size=4><b>Student Registration Form</b></font></center>
</td>
</tr>

                <tr>
                    <td>Student Name:</td>
                    <td><input type="text" name="t1"/></td>
                </tr>
                
                
                <tr>
                    <td>Address:</td>
                    <td><input type="text" name="t2"/></td>
                </tr>
                
                <tr>
                   <td>Gender:</td>
                    <td>
                        <input type="radio" name="gender" value="male" size="10">Male
             <input type="radio" name="gender" value="Female" size="10">Female</td>
                </tr>
                
                <tr>
                    <td>EmailId:</td>
                    <td><input type="text" name="t3"/></td>
                </tr>
                
                <tr>
                   <td>MobileNo:</td>
               <td><input type="text" name="t4"/></td>
                </tr>
                  
                    
         <tr>       
              
                <tr>
                    <td><input type="submit"  value="Add class details "/></td>
                </tr>
                
            </tbody>
        </table>

                                     
                                       
                            
    </form>
    </body>
</html>
