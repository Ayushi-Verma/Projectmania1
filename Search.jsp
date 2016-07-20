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
						 <li><a class="active" href="Projects.jsp" >Projects</a></li>
						<li><a href="UploadProjects.jsp" >Upload Projects</a></li>
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
							  <h2>Projects</h2>
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
	font-size: 16px;
		
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
	<th>Id</th><th align="left" style=" font-size: 14px;" >Project Name</th><th>Category</th><th>Date</th><th>Description</th><th>Download</th>
</tr>
                             

                                  <%
                                  Connection con=DBInfo.getConnection();
							      String query="select * from uploadproject";
							      PreparedStatement ps=con.prepareStatement(query);
							      ResultSet rs=ps.executeQuery();
							      while(rs.next()){
							      String s1=rs.getString(1);
							      String s2=rs.getString(2);
							      String s3=rs.getString(3);
							      String s4=rs.getString(4);
							      String s5=rs.getString(5);
						           %>
                           

<tr onmouseover="this.style.backgroundColor='#CCC';"  onmouseout="this.style.backgroundColor='#fff';" align="center">
	  <td><%= s1 %></td>
                <td style="font-size: 14px"><%= s3 %></td>
                <td style="font-size: 14px"><%= s4 %></td>
                <td><%= s2 %></td>
                <td align="left"><%= s5 %></td>
                <td><a href="Download.jsp?id=<%=s1 %>" target="_blank" style="text-decoration:none; font-weight:bold; color:#F00; font-size: 14px; ">Download</a></td>
                 
            </tr>

            
                            
          
            <%
	      			}
	      			
	      	 %>
    </table>


                              
                              
                              
                              
                              
                              
		 
								
						  </div>
						</div>
						<div class="col-4">
							<div class="block-news">
								<h3 class="color-4 p2">Category</h3>
								<div class="wrapper indent-bot">
									<ul class="list-2">
										<li>
										  <table width="164" height="262">
										    <tr>
										      <td><a class="button-2" href="">All<a/></td>
									        </tr>
										    <tr>
										      <td><a class="button-2" href="">Web Projects</a></td>
									        </tr>
										    <tr>
										      <td><a class="button-2" href="">Java Projects</a></td>
									        </tr>
										    <tr>
										      <td><a class="button-2" href="">Android Projects</a></td>
									        </tr>
										    <tr>
										      <td><a class="button-2" href="">Others</a></td>
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
