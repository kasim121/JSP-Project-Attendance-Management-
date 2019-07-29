<%-- 
    Document   : createAttendance
    Created on : 16 Jan, 2018, 9:03:42 PM
    Author     : KasimPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Tybsc.connection,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
 
    
<body background="cyan">
       <script type="text/javascript">
       function test()
{
 alert('HELLO');

       var e = document.getElementById("cid");
   
       
       var pid = e.options[e.selectedIndex].text;
       alert(pid);
     var e1 = document.getElementById("stdroman");
   
       
       var stdroman = e1.options[e1.selectedIndex].text;
       alert(stdroman); 
 //alert('kindly enter all the details'+pid);
 window.location.replace("http://localhost:38356/AMSystem/Master/Student/CreateStudent1.jsp?pid="+pid+"&stdroman="+stdroman+"&cid=ritika");

}
  </script>
   <%!
String pid,cid,stdroman;
String name="";
int no;
%>
<%
if(request.getParameter("pid")!=null){
pid=request.getParameter("pid");
   // no =Integer.parseInt(pid);
}else pid="";
if(request.getParameter("cid")!=null){
cid=request.getParameter("cid");
stdroman=request.getParameter("stdroman");
}else cid="ritikano";
%>
        <form  action="createStudentAction.jsp" >
            <%
                session.setAttribute("sname",request.getParameter("t1"));
                session.setAttribute("address",request.getParameter("t2"));
                session.setAttribute("email",request.getParameter("t3"));
                session.setAttribute("mobile",request.getParameter("t4"));
                session.setAttribute("gender",request.getParameter("gender"));
                
                connection obj = new connection();
 //               connection obj1 = new connection();
   //             connection obj2 = new connection();
                String sql ="select * from standard";
                String sql1 ="select distinct divisionname from division";
                
     
      ResultSet rs = obj.getQuery(sql);
      ResultSet rs1 = obj.getQuery(sql1);
      
     %>
        <%
      /*connection obj3 = new connection();*/
              Connection con=obj.getConnection();
       
        %>
                          
                            
        <table cellpadding="2" width="20%" bgcolor="99FFFF" align="center"
cellspacing="2">
              
                
            
            <tbody>
                    <tr>
<td colspan=2>
<center><font size=4><b>Student Registration Form</b></font></center>
</td>
</tr>

                
                    
         <tr>       
                    <td>Standard:</td>
                    
                       <td><select id="stdroman" name="stdroman">
        <option value="0">select Standard</option>
        <%
            while(rs.next())
        {
                    String standard1=rs.getString("stdroman");
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
                    <!--td><select name="division"-->
                            <td><select id="cid" name="cid" onChange="test(this)">
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
                            </td></tr> 
                     
             

                 <tr><td>
                    <%           if(cid.equals("ritika")){%>
                            <select id="roll" name="roll" >
		<option value="-1">Select Roll number</option>  
        
                    <%
                    
        Statement s1 = con.createStatement();
            String sqlq="SELECT * from standardwiserollnumbers where stdroman = '"+request.getParameter("stdroman")+"' and divisionname = '"+request.getParameter("pid")+"'";
           ResultSet re1 = s1.executeQuery(sqlq);
           out.println(sqlq);
           out.println(re1);
               
  int start=0,end=0;%>
                  
                <%
       out.println("hello");
        
         while(re1.next()) {
             
       start = re1.getInt("StartRollNo");
        end = re1.getInt("EndRollNo");
       
            }
        for(int i=start ; i<=end ; i++)
                       {
         %>
         <option value="<%=i%>"><%=i%></option>
        <%
              }}
                        
      %>
                </select></td>    
                </tr>
                   
                </select></td>    
                </tr>
                   
                
                <tr>
                    <td><input type="submit"  value="Add"/></td>
                </tr>
                
            </tbody>
        </table>

                                     
                                       
                            
    </form>
    </body>
</html>
