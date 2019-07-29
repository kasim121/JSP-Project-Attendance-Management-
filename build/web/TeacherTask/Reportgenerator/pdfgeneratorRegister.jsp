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
try
{ 
String str="pdf";
Connection conn=null;
PreparedStatement ps=null,ps1=null,ps2=null,ps3=null;
ResultSet rs=null,rs2=null,rs3=null;
                String b =request.getParameter("stdroman");
                String s =request.getParameter("subject");
                String c=request.getParameter("division");
                String d= request.getParameter("fdd");
                String t= request.getParameter("tdd");
    connection con=new connection();
    conn= con.getConnection();
    String query = "select count(*) from attendance where str_to_date(attdate,'%Y-%m-%d') between '"+d+"' and '"+t+"' group by attdate";          //Fetching data from table
    String query1 = "select str_to_date(attdate,'%Y-%m-%d') from attendance where str_to_date(attdate,'%Y-%m-%d') between '"+d+"' and '"+t+"' group by attdate";          //Fetching data from table
       ps=conn.prepareStatement(query);                // executing query
       ps1=conn.prepareStatement(query1);                // executing query
       rs=ps.executeQuery();
       ResultSetMetaData rsmd=rs.getMetaData();
       int count=0; 
    while(rs.next())
    {    count = rs.getInt(1);
    
    }
    rs.close();
       
      rs=ps1.executeQuery();  
      int k=0;
      String dates[] = new String[30];
      while(rs.next())
                   {
          dates[k]= rs.getString(1);
          k++;  
      }
      rs.close();
      
   String displayrollno=" select startrollno,endrollno from standardwiserollnumbers where stdroman='"+b+"' and divisionname='"+c+"'";
    ps3=conn.prepareStatement(displayrollno);
   rs3=ps3.executeQuery();
    int start=0,end=0;
    
    while(rs3.next())
    {
        start=rs3.getInt(1);
        end=rs3.getInt(2);
           
    }
    rs3.close();
    
    Document document=new Document();
    if(str.equals("pdf"))
    {
        response.setContentType("application/pdf");
        PdfWriter.getInstance(document,response.getOutputStream());
    }
    document.open();

   /* new paragraph instance initialized and add function write in pdf file*/
     document.add(new Paragraph("    Date and time "+new java.util.Date()));
    
    document.add(new Paragraph("                                               CREATED REPORT BY-"+session.getAttribute("userid")+"\n\n"));
    
    document.add(new Paragraph("Attendance Register between "+d+ " and "+t+" Dates\n\n"));
    document.add(new Paragraph("Standard "+b +" Division "+c +"  Subject "+s+"\n\n"));
    
  PdfPTable table = new PdfPTable(count+1);
    PdfPCell startcell = new com.lowagie.text.pdf.PdfPCell(new Paragraph("Rollno"));
  table.addCell(startcell);
   //while(rs.next())
  //  { 
        for(int i=0;i<k;i++){
   //fOR DISPLAY DATES            
  PdfPCell cell = new com.lowagie.text.pdf.PdfPCell(new Paragraph(""+dates[i]));
  table.addCell(cell);
        }
    //}
   // rs.close(); 
    // rs=ps1.executeQuery();
       
  // int j=0;
   int len = k;
    for(int i=start;i<=end;i++)
    {
          // System.out.println("I M IN FOR  LOOP");       
  PdfPCell cell = new com.lowagie.text.pdf.PdfPCell(new Paragraph(""+i)); 
  table.addCell(cell);
 //table.completeRow();
 // while(rs.next())
 //   {       System.out.println("I M IN WHILE LOOP date "+rs.getString(1));
  //int i=start;
for(int j =0;j<k;j++)
      {
 
  //if(j!=len){
 String eachrow = "select status from attendance where stdroman='"+b+"' and divisionname='"+c+"' and  subject='"+s+"' and attdate='"+dates[j]+"' and rollno="+i+"" ;
 //String eachrow = "select status from attendance where stdroman='II' and divisionname='A' and  subject='Physics' and attdate='"+rs.getString(1)+"' and rollno=1" ;
 System.out.println(eachrow);
 ps3=conn.prepareStatement(eachrow);                // executing query
      rs3=ps3.executeQuery();
        String status="P";
      PdfPCell cellstatus; 
       if(rs3.next())
       {     System.out.println("I M IN INNER WHILE LOOP");
       status = rs3.getString(1);
       cellstatus = new com.lowagie.text.pdf.PdfPCell(new Paragraph(""+status));
 
       }
       else
       { cellstatus = new com.lowagie.text.pdf.PdfPCell(new Paragraph(""+status));
           
       }        table.addCell(cellstatus);
       rs3.close();
    ps3.close();
             } 
  //j++;
    }
 
  //rs.close();
 
  // }
    //rs3.close();
    //ps3.close();
   table.setWidthPercentage(100f);
     //insert column headings
   
   Font bfBold12 = new Font("Times New Roman",Font.BOLD,18);
   

    
   /*for(int i=1;i<=rsmd.getColumnCount();i++){
   create a new cell with the specified Text and Font
  PdfPCell cell = new com.lowagie.text.pdf.PdfPCell(new Paragraph(rsmd.getColumnName(i)));
  table.addCell(cell);
       
   }*/
   
//        document.add(new Paragraph("\t\t"+rsmd.getColumnName(1)+"\t\t\t\t "+rsmd.getColumnName(2)+"\t\t\t\t     "+rsmd.getColumnName(3)+"\t\t\t\t       "+rsmd.getColumnName(4)+"\t\t \t\t      "+rsmd.getColumnName(5)+"\t\t \t\t "+"\n"));
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