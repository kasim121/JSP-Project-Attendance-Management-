<%-- 
    Document   : updatecourse
    Created on : 7 Aug, 2016, 2:27:50 AM
    Author     : sushil
--%>

 
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
 window.location.replace("http://localhost:38356/AMSystem/Master/Teacher/updateTeacher.jsp?pid="+pid+"&cid=ritika");

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
    no =Integer.parseInt(pid);
}else pid="";
if(request.getParameter("cid")!=null){
cid=request.getParameter("cid");
}else cid="ritikano";
%>



        <%connection obj = new connection();
              Connection con=obj.getConnection();%>
        <form action="updateTeacherAction.jsp" method="POST" name="form1">
            
            <table cellpadding="4"  width="50%"  bgcolor="99FFFF" align="right" cellspacing="2">
            <tbody>
                                <tr>
                                  <td colspan=2>
                                  <center><font size=4><b>Modify Existing teachers Details</b></font></center>
                                  </td>
                               </tr>
                    <tr>
                        <td>Teacher ID</td>
                        <td>
                            <%           if(cid.equals("ritikano")){%>
                            <select id="cid" name="cid" onChange="test(this)">
		<option value="-1">Select Teacher ID</option>  
        
                    <%
                    
          Statement s1 = con.createStatement();
            String sqlq="SELECT * from Teacherinfo";
           ResultSet re1 = s1.executeQuery(sqlq);
           out.println(sqlq);
           out.println(re1);
               
  int un;%>
                  
                <%
        out.println("hello");
         while(re1.next()) {
             
       un = re1.getInt("tid");
     
         %>
         <option value="<%=un%>"><%=un%></option>
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

           ResultSet re2 = s2.executeQuery("SELECT * from teacherinfo where tid="+no+"");
           while(re2.next()){
                %>
                
                              <tr><td>  Teacher Name:</td>
                 <td>
                 <input type="text" name="tid" size="50" value="<%=re2.getString("teacher_name")%>" required/>
                 </td></tr>
             <tr><td>  Email:</td>
                 <td>
                 <input type="text" name="eid" size="50" value="<%=re2.getString("email")%>" required />
                 </td></tr>
             <tr><td>  Mobile:</td>
                 <td>
                 <input type="text" name="num" size="50" value="<%=re2.getString("mobile")%>" required />
                 </td></tr>
             <tr><td>  Qualification:</td>
                 <td>
                 <input type="text" name="quali" size="50" value="<%=re2.getString("qualification")%>" required />
                 </td></tr>
             <tr><td>  Address:</td>
                 <td>
                 <input type="text" name="add" size="50" value="<%=re2.getString("address")%>" required />
                 </td></tr>
             <tr><td>  Gender:</td>
                 <td>
                     <input type="text" name="gender" size="50" value="<%=re2.getString("gender")%>" required />
                 </td></tr>
             <tr><td>Yr.of Exp.:</td>
                 <td>
                  <input type="text" name="exp" size="50" value="<%=re2.getString("yrofexp")%>" required />
                 </td></tr>
               <tr><td> Salary:</td>
                 <td>
                  <input type="text" name="salary" size="50" value="<%=re2.getString("salary")%>" required />
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