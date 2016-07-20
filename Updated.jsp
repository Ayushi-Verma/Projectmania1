<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DBInfo"%>
<%@page import="java.sql.Connection"%>
<script type="text/javascript">

Date.prototype.toString = function () {
	return [this.getMonth () < 9 ? '0' + (this.getMonth() + 1) : this.getMonth() + 1, this.getDate() < 10 ? '0' + this.getDate() : this.getDate(), this.getFullYear()].join ('-')
}

onload = function () {
	document.forms[1].date.onchange = function () {
		var d = new Date (this.value)
		this.value = d
		
	}
	
	document.forms[1].date.value = new Date ()
	document.forms[1].date.onchange()
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
<p><!-- header -->
</p>
    <div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						<a style="display: block; width: 224px; height: 30px; text-decoration: none; font-size: 250%;" href="index.html">Project<span style="color: #FFFFFF; font-size: 100%;">Mania</span></a>
						<strong class="slog">The most creative ideas</strong>
					</h1>
					<form id="search-form"  name="addProjects" action="" method="post" >
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
						<li><a  href="LoginPage.jsp">Home Page</a></li>
						 <li><a href="UploadedProjects.jsp" >Uploaded Projects</a></li>
						<li><a  class="active" href="AdminLiveProject.jsp" >Live Project</a></li>
                        <li><a href="AddLiveProjects.jsp" >Add Live Projects</a></li>

						  <li class="last-item"><a href="LogoutSession.jsp">Logout</a></li>
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
							
						<p></p>
							
					  <table width="509"border="0" align="center">
					  		<%
					  		int flag=0;
					  		
					  		String id=request.getParameter("id");
					  		String project_name=request.getParameter("project_name");
					  		Connection con=DBInfo.getConnection();
					  		String query="update start set project_name=? where project_id="+id;
					  		PreparedStatement ps=con.prepareStatement(query);
					  		ps.setString(1, project_name);
					  		flag=ps.executeUpdate();
					  		if(flag==0){
					  							  		 %>
					     <tr style="text-align: center;">
					      <td width="360" height="60">record is not updated</td>
					   
				        </tr>
				         <%
				        }
				        else{
				        %>
					    <tr style="text-align:center;">
					      <td width="360" height="58">record updated</td>
				        </tr>
				        
				        <%
				        }
				        
				        %>
				        </table>
				        
<p>&nbsp;</p>
								
						  </div>
						</div>
						<div class="col-4">
							<div class="block-news">
								<h3 class="color-4 p2">Enjoy the live Experince</h3>
								<div class="wrapper indent-bot">
									<ul class="list-2">
										<li><img src="images/52.jpg" height="119" width="179"></li>
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
					<div class="row-padding">
						<div class="wrapper">
							<div class="col-1">
								<h4>Navigation</h4>
				<ul class="list-services">
					 <li><a href="index.html">Home </a></li>
						 <li><a href="Projects.jsp" >Projects</a></li>
						<li><a href="UploadProjects.jsp" >Upload Projects</a></li>
                        <li><a href="LiveProjects.jsp" >Live Projects</a></li>
	
           		  </ul>								</div>
						
                        <div class="col-4">
								<h4>Get In Touch</h4>
				
					<ul class="list-services">
						<li><a href="contact.html" >Contact Us</a> </li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms &amp; Conditions </a></li>					
					</ul>
					<p>Email: <a href="mailto:info@example.com">pm@gmail.com</a></p>											                        </div>
                        	<div class="col-2">
								<h4>Follow Us:</h4>
								<ul class="list-services">
									<li class="item-1"><a href="#">Facebook</a></li>
									<li class="item-2"><a href="#">Twitter</a></li>
									<li class="item-3"><a href="#">LinkedIn</a></li>
								</ul>
							</div>
                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="LogIn.html" style="font-size:36px">LogIn</a>
							
						  
						</div>
					</div>
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
