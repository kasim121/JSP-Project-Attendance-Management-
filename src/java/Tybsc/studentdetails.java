/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tybsc;
import java.sql.*;

/**
 *
 * @author KasimPC
 */
public class studentdetails {
  public String getStudentName(String seatno)
    {   Connection con=null;
    String sname="";
    
         try
            {
                Class.forName("com.mysql.jdbc.Driver");
                 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/kasim","root","root");
                    Statement s1 = con.createStatement();
          
          
            String sql1="select * from student where seatno='"+seatno+"'";
            ResultSet re1 = s1.executeQuery(sql1);
           
            while(re1.next())
                { 
                 sname = re1.getString("Sname");
                
            }}
            catch(Exception e1)
            {
                System.out.println(e1);
            }
         return sname;
   
}
}
