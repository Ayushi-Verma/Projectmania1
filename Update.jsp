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
						<%
					  		String id=request.getParameter("id");
					  		Connection con=DBInfo.getConnection();
					  		%>
					  									<form method="post" action="Updated.jsp">
					  <table width="509"border="0" align="center">
					  		<%
					  		
					  		String query="select * from start where project_id="+id;
					  		PreparedStatement ps=con.prepareStatement(query);
					  		ResultSet rs=ps.executeQuery();
					  		while(rs.next()){
					  			String project_id=rs.getString(1);
					  			String project_name=rs.getString(2);
					  	
					  		
					  							  		 %>
					     <tr style="text-align: right">
					      <td width="360" height="60"><input type="text" name="id" id="id" value=<%=project_id %> placeholder="Project_Id" readonly  style="font-size:24px; width:300; "></td>
					   
				        </tr>
					    <tr style="text-align:right">
					      <td width="360" height="58"><input type="text" name="project_name" id="project_name" value=<%=project_name %> placeholder="Project_Name" required style="font-size:24px; width:300; "></td>
				        </tr>
				        
				        <tr style="text-align: right"> 
					      <td><input name="submit" type="submit"  id="submit" value="Upload Project" style="font-size:36px; width:300; background:#3c3c3c; color:#FFF; border-radius: 8px; "></td>
				        </tr>
				        <%
				        }
				        
				        %>
				        </table>
				        </form>		
				        
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
