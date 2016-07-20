<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DBInfo"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.io.BufferedReader,java.io.IOException,java.io.InputStreamReader,java.util.Enumeration,java.util.zip.*,java.util.zip.ZipFile"%>

<%
	String id=request.getParameter("id");
	Connection con=DBInfo.getConnection();
	String query="select * from project where id="+id;
	PreparedStatement ps=con.prepareStatement(query);
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
	
	String filename=rs.getString(2);
	String path=rs.getString(3);
	
System.out.println("path is"+path);

   
response.setContentType("application/octet-stream");
String disHeader = "Attachment; Filename="+filename;
response.setHeader("Content-Disposition", disHeader);
File fileToDownload = new File(path);
 
InputStream in = null;
ServletOutputStream outs = response.getOutputStream();
 
 
try {
    in = new BufferedInputStream
    (new FileInputStream(fileToDownload));
    int ch;
    while ((ch = in.read()) != -1) {
    outs.print((char) ch);
    System.out.print((char) ch);
    }
    }
    finally {
    if (in != null) in.close(); // very important
    }
 
    outs.flush();
    outs.close();
    in.close();

	  }
%>   
