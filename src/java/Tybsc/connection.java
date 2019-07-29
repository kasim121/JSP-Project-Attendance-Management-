/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tybsc;
import java.sql.*;


public class connection {
    
 public Connection getConnection()
    {   Connection con=null;
         try
            {
                Class.forName("com.mysql.jdbc.Driver");
                 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/kasim","root","root");
                
                
            }
            catch(Exception e1)
            {
                System.out.println(e1);
            }
         return con;
    }
      public ResultSet getQuery(String sql) throws SQLException
      {
         Connection con = getConnection();
          Statement st = con.createStatement();
          ResultSet rs=st.executeQuery(sql);
          return rs;
      }
      public ResultSet getScrollableResultSetQuery(String sql) throws SQLException
      {
         Connection con = getConnection();
          Statement st1 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
          ResultSet rs1=st1.executeQuery(sql);
          return rs1;
      }
    
}
