<%! 

int id=(int)(Math.random()*1000000);
	       
%>

<script type="text/javascript">

Date.prototype.toString = function () {
	return [this.getMonth () < 9 ? '0' + (this.getMonth() + 1) : this.getMonth() + 1, this.getDate() < 10 ? '0' + this.getDate() : this.getDate(), this.getFullYear()].join ('-')
}

onload = function () {
	document.forms[2].date.onchange = function () {
		var d = new Date (this.value)
		this.value = d
		
	}
	
	document.forms[2].date.value = new Date ()
	document.forms[2].date.onchange()
}

</script>

<html lang="en">
<head>
<title></title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script> 
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script> 
<script src="js/FF-cash.js" type="text/javascript"></script>  
<!--[if lt IE 7]>
	<div style=' clear: both; text-align:center; position: relative;'>
		<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
	</div>
<![endif]-->
<!--[if lt IE 9]>
	<script type="text/javascript" src="js/html5.js"></script>
	<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>
<body id="page5">
<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						<a style="display: block; width: 224px; height: 30px; text-decoration: none; font-size: 250%;" href="index.html">Project<span style="color: #FFFFFF; font-size: 100%;">Mania</span></a>
						<strong class="slog">The most creative ideas</strong>
					</h1>
					<form id="search-form" action="" method="post" enctype="multipart/form-data">
						<fieldset>
							<div class="search-form">					
								<input type="text" name="search" placeholder="Search Project" onBlur="if(this.value=='') this.value='Type Keyword Here'" onFocus="if(this.value =='Type Keyword Here' ) this.value=''" />
								<a href="Search.jsp" onClick="document.getElementById('search-form').submit()">Search</a>									
							</div>
						</fieldset>
					</form>
				</div>
				<div class="row-2">
					<nav>
						<ul class="menu">
						  <li><a href="index.html">Home Page</a></li>
						 <li><a  href="Projects.jsp" >Projects</a></li>
						<li><a class="active" href="UploadProjects.jsp" >Upload Projects</a></li>
                        <li><a href="LiveProjects.jsp" >Live Projects</a></li>
						  <li class="last-item"><a  href="contacts.html">Contact Us</a></li>
						</ul>
					</nav>
				</div>
			
			</header>
<!-- content -->
			<section id="content">
				<div class="padding">
					<div class="wrapper p4">
						<div class="col-3">
							<div class="indent">
							  <h2>Upload Projects</h2>
                                <p>&nbsp;</p>
                                <form enctype="multipart/form-data" method="post" action="UploadProjects.jsp">
				         <table width="382"  border="0" align="center">

					    <tr style="text-align: right">
					      <td width="253" height="44"><input name="file" type="file" id="file" placeholder="Project"  style="font-size:16px; width:200; "></td>
					      
					      
			        	  <td width="119"><input name="upload" type="submit" id="upload" value="Upload" style="font-size:18px; width:100; background:#3c3c3c; color:#FFF; border-radius: 8px; "></td>
					 <td>      <%@ page import="java.io.*" %><%@ page import="java.sql.*" %>
<%
int file_id=id;
System.out.println("file_id is"+file_id);
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
String path="E:\\study\\advance java\\apache-tomcat-8.0.14\\apache-tomcat-8.0.14\\bin\\" +saveFile;

out.println(saveFile);
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
FileOutputStream fileOut = new FileOutputStream(saveFile);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

%>File Uploaded
<%
Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3306/projectmania";;;
ResultSet rs = null;
PreparedStatement ps = null;
FileInputStream fis;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "ankit");
File f = new File(saveFile);
ps = connection.prepareStatement("insert into project values(?,?,?)");

ps.setInt(1,file_id);
ps.setString(2,saveFile);
ps.setString(3,path);
int s = ps.executeUpdate();
if(s>0) {
System.out.println("Uploaded successfully !");
}
else {
System.out.println("unsucessfull to upload file.");
}
}
catch(Exception e){e.printStackTrace();}
}
%></td></tr>
					     
				        </table>
				        </form>

           
                          
                              
						<form method="post" action="Upload.jsp?project_id=<%= id %>">
					  <table width="509" height="441" border="0" align="center">
					  		<%
					  		int project_id=id;
					  		System.out.println("project id is"+project_id);
					  		 %>
					     <tr style="text-align: right">
					      <td width="360" height="60"><input type="text" name="date" id="date"  placeholder="Date"  style="font-size:24px; width:300; "></td>
					      <td width="139" style="text-align: left;font-size:18px">(mm-dd-yyyy)</td>
				        </tr>
					    <tr style="text-align:right">
					      <td width="360" height="58"><input type="text" name="project_name" id="project_name" placeholder="Project_Name" style="font-size:24px; width:300; "></td>
				        </tr>
					    <tr style="text-align: right">
					      <td height="57"><input type="text" name="category" id="category" placeholder="Category"  style="font-size:24px; width:300; "></td>
				        </tr>
					    <tr style="text-align: right">
					      <td height="57"><input type="textarea" name="description" id="description" placeholder="Description"  style="font-size:24px; width:300; "></td>
				        </tr>
                        
                        
                           <tr style="text-align: right">
					      <td width="360" height="60"><span style="color: #000; font-size: 20px;">Make your Project Downloadable :</span></td>
					      <td width="139" style="text-align: left;font-size:18px">  <p>
					        <label>
					          <input type="radio" name="downloadable" value="yes"  id="downloadable_0" checked="true">
					          yes</label>
					        <label>
					          <input type="radio" name="downloadable" value="no" id="downloadable_1">
					          no</label>
					        <br>
					        </p></td>
				        </tr>

					  
				        <tr style="text-align: right"> 
					      <td>					        <input name="submit" type="submit"  id="submit" value="Upload Project" style="font-size:36px; width:300; background:#3c3c3c; color:#FFF; border-radius: 8px; "></td>
				        </tr>
					</table>
                      </form>
							 	
						  </div>
						</div>
						<div class="col-4">
							<div class="block-news">
								<h3 class="color-4 p2">Guidelines								</h3>
								<div class="wrapper indent-bot">
								  <ul class="list-2">
									  <li>
										  <table width="164" height="250">
										    <tr style="text-align: left">
										      <td height="34">1. add flow chart which tells about your projects flows moves</td>
									        </tr>
										    <tr>
										      <td height="28">&nbsp;</td>
									        </tr>
										    <tr>
										      <td height="28"> 2. add help file which includes all the information about how t0 run a project</td>
									        </tr>
										    <tr>
										      <td>&nbsp;</td>
									        </tr>
										    <tr>
										      <td>3. put all the files in a rar including your source code</td>
									        </tr>
									      </table>
										</li>
									</ul>
								</div>
															</div>
						</div>
					</div>
					
					</div>
				</div>
			</section>
<!-- footer -->
			<footer>
				<div class="row-top">
					<div class="row-padding"></div>
				</div>
			  <div class="row-bot">
					<div class="aligncenter">
						<p class="p0"> 
                        
                        
                           <br>
						<!-- {%FOOTER_LINK} -->
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>
