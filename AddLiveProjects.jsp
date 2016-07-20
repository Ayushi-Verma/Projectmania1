<%! 

int id=(int)(Math.random()*1000000);
	       
%>

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
						<li><a   href="AdminLiveProject.jsp" >Live Project</a></li>
                        <li><a class="active" href="AddLiveProjects.jsp" >Add Live Projects</a></li>

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
								<form method="post" action="AddLive.jsp">
					  <table width="509"border="0" align="center">
					  		<%
					  		int project_id=id;
					  		System.out.println("project id is"+project_id);
					  		 %>
					     <tr style="text-align: right">
					      <td width="360" height="60"><input type="text" name="id" id="id" value=<%=project_id %> placeholder="Project_Id" readonly  style="font-size:24px; width:300; "></td>
					   
				        </tr>
					    <tr style="text-align:right">
					      <td width="360" height="58"><input type="text" name="project_name" id="project_name" placeholder="Project_Name" required style="font-size:24px; width:300; "></td>
				        </tr>
				        
				        <tr style="text-align: right"> 
					      <td><input name="submit" type="submit"  id="submit" value="Upload Project" style="font-size:36px; width:300; background:#3c3c3c; color:#FFF; border-radius: 8px; "></td>
				        </tr>
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
