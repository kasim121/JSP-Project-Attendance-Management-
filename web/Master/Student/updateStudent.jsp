
 
 <%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Course Details</title>
        
    </head>
    <body background="20.jpg">
    <script type="text/javascript">
       function test()
{
 //alert('HELLO');

       var e = document.getElementById("cid");
   
       
       var pid = e.options[e.selectedIndex].text;
     
        
 //alert('kindly enter all the details'+pid);
 window.location.replace("http://localhost:38356/AMSystem/Master/Student/updateStudent.jsp?pid="+pid+"&cid=ritika");

}
  </script>
  <%!
String pid,cid;
String name="";
int no;
%>
<%
if(request.getParameter("pid")!=null){
pid=request.getParameter("pid");
int index = pid.indexOf("-");
pid= pid.substring(0, index);
    no =Integer.parseInt(pid);
}else pid="";
if(request.getParameter("cid")!=null){
cid=request.getParameter("cid");
}else cid="ritikano";
%>



        <%connection obj = new connection();
              Connection con=obj.getConnection();%>
        <form action="updateStudentAction.jsp" method="POST" name="form1">
            
            <table cellpadding="4"  width="50%"  bgcolor="99FFFF" align="right" cellspacing="2">
            <tbody>
                                <tr>
                                  <td colspan=2>
                                  <center><font size=4><b>Modify Existing Student Details</b></font></center>
                                  </td>
                               </tr>
                    <tr>
                        <td>Student ID</td>
                        <td>
                            <%           if(cid.equals("ritikano")){%>
                            <select id="cid" name="cid" onChange="test(this)">
		<option value="-1">Select Student ID</option>  
        
                    <%
                    
          Statement s1 = con.createStatement();
            String sqlq="SELECT * from Studentinfo";
           ResultSet re1 = s1.executeQuery(sqlq);
           out.println(sqlq);
           out.println(re1);
               
  int un;%>
                  
                <%
        out.println("hello");
         while(re1.next()) {
             
       un = re1.getInt("sid");
     
         %>
         <option value="<%=un%>"><%=un%>-<%=re1.getString("sname")%></option>
        <%
              }
                      
      %>
                </select></td>
               
<%} else{%>
          <select id="cid"  name="cid" >
               <option value="<%=pid%>"><%=pid%></option>
          </select>
          <%}%>
	</tr>

                         

                     
                                    <%
                Statement s2 =  con.createStatement();

           ResultSet re2 = s2.executeQuery("SELECT * from Studentinfo where sid="+no+"");
           while(re2.next()){
                %>
                 <tr><td>  Roll No:</td>
                 <td>
                 <input type="text" name="rollno" size="50" value="<%=re2.getInt("rollno")%>" required />
                 </td></tr>
                
                              <tr><td>  Student Name:</td>
                 <td>
                 <input type="text" name="sname" size="50" value="<%=re2.getString("sname")%>" required/>
                 </td></tr>
                                <tr><td>  Gender:</td>
                 <td>
                     <input type="text" name="gender" size="50" value="<%=re2.getString("gender")%>" required />
                 </td></tr>
            
             <tr><td>  Mobile:</td>
                 <td>
                 <input type="text" name="mobno" size="50" value="<%=re2.getInt("mobno")%>" required />
                 </td></tr>
             <tr><td>  Email:</td>
                 <td>
                 <input type="text" name="eid" size="50" value="<%=re2.getString("emailid")%>" required />
                 </td></tr>
             <tr><td>  Address:</td>
                 <td>
                 <input type="text" name="add" size="50" value="<%=re2.getString("address")%>" required />
                 </td></tr>
           
             <tr><td>Standard:</td>
                 <td>
                  <input type="text" name="std" size="50" value="<%=re2.getString("stdroman")%>" required />
                 </td></tr>
               <tr><td> Division</td>
                 <td>
                  <input type="text" name="division" size="50" value="<%=re2.getString("divisionname")%>" required />
                 </td></tr>
             
                        <%}
                    %><tr><td></td>
                         <td><input type="submit" name="selection" value="update" style="background-color:#49743D;font-weight:bold;color:#ffffff;" />&nbsp;&nbsp;&nbsp;&nbsp;
                            
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
        </font>
        <br>
       
      
    </body>
</html