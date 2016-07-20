<!DOCTYPE html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DBInfo"%>
<%@page import="java.sql.Connection"%>
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
						<li><a href="UploadProjects.jsp" >Upload Projects</a></li>
                        <li><a class="active" href="LiveProjects.jsp" >Live Projects</a></li>
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
							  <h2>Live Projects</h2>
							
							
							 <style type="text/css">
table.hovertable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}
table.hovertable th {
	background-color:#000000;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #FFFFFF;
	color:#FFF;
	font-weight:bold;
	font-size: 26px;
		
	}
table.hovertable tr {
	background-color:#FFFFFF;
}
table.hovertable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}
</style>
<!-- Table goes in the document BODY -->
<table width="600" height="43" class="hovertable">
<tr>
	<th>Id</th><th style=" font-size: 24px;" >Project Name</th>
</tr>
                             

							      <%
							      Connection con=DBInfo.getConnection();
							      String query= "select project_id,project_name from start";
							      PreparedStatement ps=con.prepareStatement(query);
							      ResultSet res=ps.executeQuery();
							      while(res.next()){
							      String id=res.getString(1);
							      String project_name=res.getString(2);
							      
							      
							      
							      %>
							      
							      


<tr onmouseover="this.style.backgroundColor='#CCC';"  onmouseout="this.style.backgroundColor='#fff';" align="center">
	  <td style="font-size: 22;"><%= id %></td>
                <td ><a href="http://ankit:8080/<%=project_name%>//" target="_blank" style="font-size: 24px; text-decoration:none; color: red;"><%=project_name %></a></td>
                           </tr>

            
                            
          
            <%
	      			}
	      			
	      	 %>
    </table>
							      
								<p>&nbsp;</p>
								
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
