<%-- 
    Document   : LeftAdminFrame
    Created on : 23 Dec, 2017, 12:13:03 PM
    Author     : KasimPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>JSP Page</title>
    </head>
   
      
			
<body bgcolor="yellow">

			
<ul>		
				<font color="blue" Size="4"><b>Add Teacher</b></font>
				<li>
					<a href="http://localhost:38356/AMSystem/Master/Teacher/createTeacher.jsp" target="right_frame">Add</a>
				</li>
				<li><font color="blue" Size="4">
					<a href="http://localhost:38356/AMSystem/Master/Teacher/updateTeacher.jsp" target="right_frame">Update</a>
				</li>
				<li>
					<a  href="http://localhost:38356/AMSystem/Master/Teacher/deleteTeacher.jsp" target="right_frame">Delete</a>
				</li>
                                
                                <li>
					<a  href="http://localhost:38356/AMSystem/Master/Teacher/pdfgenerator.jsp" target="right_frame">View Login </a>
				</li>
                              
				
                                
                        </ul>
 <ul>		
				<font color="blue" Size="4"><b>Add Student</b></font>
				<li>
					<a href="http://localhost:38356/AMSystem/Master/Student/studentinfo.jsp" target="right_frame">Add</a>
				</li>
				
                                 <li><font color="blue" Size="4">
					<a href="http://localhost:38356/AMSystem/Master/Student/updateStudent.jsp" target="right_frame">Update</a>
				</li>
                              
				<li><font color="blue" Size="4">
					<a href="http://localhost:38356/AMSystem/Master/Student/deleteStudent.jsp" target="right_frame">Delete</a>
				</li>
                                
                        </ul>   
    
			<ul>		
				<font color="blue"><b>Add Standard </b></font>
				<li>
					<a href="http://localhost:38356/AMSystem/Master/Standard/AddStandard.jsp" target="right_frame">Add</a>
				</li>
				
			        <li>
					<a  href="http://localhost:38356/AMSystem/Master/Standard/deleteStandard.jsp" target="right_frame">Delete/Update </a>
				</li>
			
				
				
                        </ul>
                        <ul>
                            <font color="blue"><b>Add Division </b></font>
				<li>
					<a href="http://localhost:38356/AMSystem/Master/Division/AddDivision.jsp" target="right_frame">Add</a>
				</li>
				
				<li>
					<a  href="http://localhost:38356/AMSystem/Master/Division/deleteDivision.jsp" target="right_frame">Delete/Update </a>
				</li>

				
                        </ul>
    
    
                        <ul>
                            <font color="blue"><b>Add Subject </b></font>
				<li>
					<a href="http://localhost:38356/AMSystem/Master/subject/AddSubject.jsp" target="right_frame">Add</a>
				</li>
				

			
				<li>
					<a href="http://localhost:38356/AMSystem/Master/subject/deleteSubject.jsp" target="right_frame">Delete/Update</a>
				</li>
		        </ul>
                        <ul>
		         <a href="http://localhost:38356/AMSystem/Master/viewreports.jsp" target="right_frame"><font color="blue"><b>Reports:</b></font></a><br>
                         <a href="http://localhost:38356/AMSystem/Master/School/EnterSchoolDetails.jsp" target="right_frame"><font color="blue"><b>School Info:</b></font></a>
                        </ul>
 </body>
</html>
