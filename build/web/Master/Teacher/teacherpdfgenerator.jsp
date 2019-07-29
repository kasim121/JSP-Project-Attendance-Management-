<%@page import="javax.swing.border.TitledBorder"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.lowagie.text.DocumentException"%>
<%@page import="com.lowagie.text.Paragraph"%>
<%@page import="com.lowagie.text.html.HtmlWriter"%>
<%@page import="com.lowagie.text.pdf.PdfWriter"%>
<%@page import="com.lowagie.text.Document"%>
<%@page import="java.io.*"%>;
<%@page import="java.awt.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="com.lowagie.text.*"%>
<%@page import="com.lowagie.text.pdf.*"%>
<%@page import="com.lowagie.text.html.*"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="com.lowagie.text.*"%>
<%@page import="com.lowagie.text.pdf.*"%>
<%@page import="com.lowagie.text.html.*"%>
<%@page import="Tybsc.connection" %>
<%@page import="java.awt.Font"%>

<%
String str="pdf";

Connection conn=null;
PreparedStatement ps=null;
ResultSet rs=null;
try
{ 
    Document document=new Document();
    if(str.equals("pdf"))
    {
        response.setContentType("application/pdf");
        PdfWriter.getInstance(document,response.getOutputStream());
    }
    connection con=new connection();
    conn= con.getConnection();
    String query = "select * from teacherinfo";          //Fetching data from table
       ps=conn.prepareStatement(query);                // executing query
       rs=ps.executeQuery();
       ResultSetMetaData rsmd=rs.getMetaData();
       
       
    document.open();

   /* new paragraph instance initialized and add function write in pdf file*/
     document.add(new Paragraph("    Date and time "+new java.util.Date()));
    
    document.add(new Paragraph("                                               CREATED REPORT BY-"+session.getAttribute("userid")+"\n\n"));
    
    document.add(new Paragraph("-----------------------------------------------TEACHER REPORT---------------------------------------\n\n"));
    PdfPTable table = new PdfPTable(9);
   // set table width a percentage of the page width
   table.setWidthPercentage(90f);
   //insert column headings
   
   Font bfBold12 = new Font("Times New Roman",Font.BOLD,12);
   

    
   for(int i=1;i<=rsmd.getColumnCount();i++){
   //create a new cell with the specified Text and Font
  PdfPCell cell = new com.lowagie.text.pdf.PdfPCell(new Paragraph(rsmd.getColumnName(i)));
  table.addCell(cell);
       
   }
   
//        document.add(new Paragraph("\t\t"+rsmd.getColumnName(1)+"\t\t\t\t "+rsmd.getColumnName(2)+"\t\t\t\t     "+rsmd.getColumnName(3)+"\t\t\t\t       "+rsmd.getColumnName(4)+"\t\t \t\t      "+rsmd.getColumnName(5)+"\t\t \t\t "+"\n"));
    while(rs.next())
    {
          // fetch & writing records in pdf files
        //document.add(new Paragraph("Program Code ::"+rs.getString(1)+"\t \t \tProgram Name ::"+rs.getString(2)+"\n\n"));
  //      document.add(new Paragraph("\t\t "+rs.getString(1)+"\t\t\t\t        "+rs.getString(2)+"\t\t \t\t      "+rs.getString(3)+"\t\t \t\t    "+rs.getString(4)+"\t\t \t\t    "+rs.getString(5)+"\t\t \t\t "+"\n"));
        for(int i=1;i<=rsmd.getColumnCount();i++){
   //create a new cell with the specified Text and Font
  PdfPCell cell = new com.lowagie.text.pdf.PdfPCell(new Paragraph(rs.getString(i)));
  table.addCell(cell);
          // fetch & writing records in pdf files
        //document.add(new Paragraph("Program Code ::"+rs.getString(1)+"\t \t \tProgram Name ::"+rs.getString(2)+"\n\n"));
        //document.add(new Paragraph("\t\t\t\t\t \t "+rs.getString(1)+"\t\t\t\t  \t\t\t\t "+rs.getString(2)+"\t\t \t\t \t\t\t\t\t\t\t \t\t\t\t"+rs.getString(3)+"\n"));
    }}
    document.add(table);
    
    
    document.add(new Paragraph("---------------------------------------------------------PAGE NO::"+document.getPageNumber()+"------------------------------------------------------"));
    
    document.close(); //document instance closed
    conn.close();  //db connection close
}
catch(Exception de) 
{
        de.printStackTrace();
            System.err.println("document: " + de.getMessage());
            
}


%>