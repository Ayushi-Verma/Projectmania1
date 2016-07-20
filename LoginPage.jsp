
<html lang="en">
<head>
<title></title>

<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script> 
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>  
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script> 
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script> 
<script src="js/FF-cash.js" type="text/javascript"></script>

</head>
<body id="page1">
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
						  <li><a class="active" href="LoginPage.jsp">Home Page</a></li>
					    <li><a href="UploadedProjects.jsp" >Uploaded Projects</a></li>
						<li><a   href="AdminLiveProject.jsp" >Live Project</a></li>
                        <li><a href="AddLiveProjects.jsp" >Add Live Projects</a></li>


						  <li class="last-item"><a href="LogoutSession.jsp">Logout</a></li>
						</ul>
					</nav>
				</div>
			<div class="row-3">
					<div class="slider-wrapper">
						<div class="slider">
						  <ul class="items">
							<li><img src="images/1.png" alt="">
								<strong class="banner">
									<strong class="b1">our solidity</strong>
									<strong class="b2">is equity</strong>
									<strong class="b3">Innovation and flexibility, quick and<br> high results - oriented work</strong>
								</strong>
							</li>
							<li><img src="images/slider-img2.png" alt="">
								<strong class="banner">
									<strong class="b1">our aim is</strong>
									<strong class="b2">Dedicated</strong>
									<strong class="b3">To conducting business affairs using<br>the highest standards</strong>
								</strong>
							</li>
							<li><img src="images/5.jpg" alt="">
								<strong class="banner">
									<strong class="b1">encourage</strong>
									<strong class="b2">Business</strong>
									<strong class="b3">Success and growth with our<br>professionals of this sphere</strong>
								</strong>
							</li>
						  </ul>
						  <a class="prev" href="#">prev</a>
						  <a class="next" href="#">prev</a>
						</div>
					</div>
				</div>
			</header>
<!-- content -->
			<section id="content">
				<div class="padding">
					<div class="box-bg margin-bot">
						<div class="wrapper">
						  <table width="895" height="184">
						    <tr>
						      <td width="240" rowspan="2"><img src="images/download.jpg" width="239" height="214"></td>
						      <td></td>
					        </tr>
						    <tr>
							    <td width="643"><span style="color: #000; text-align: center; font-weight: bold; font-size: 28px;">Description  </span>:<p></p>
							      <p style="font-size:24px; ">  Here you can experience live web project in a just one <br> click also you
						      can download projects. you can upload projects if your  project is upto the mark then  we will <br>host it on our site.</p></td>
					        </tr>
						  </table>
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
					</p>
				  </div>
				</div>
			</footer>
		</div>
	</div>
	<script type="text/javascript"> Cufon.now(); </script>
	<script type="text/javascript">
		$(function(){
			$('.slider')._TMS({
				prevBu:'.prev',
				nextBu:'.next',
				playBu:'.play',
				duration:800,
				easing:'easeOutQuad',
				preset:'simpleFade',
				pagination:false,
				slideshow:3000,
				numStatus:false,
				pauseOnHover:true,
				banners:true,
				waitBannerAnimation:false,
				bannerShow:function(banner){
					banner
						.hide()
						.fadeIn(500)
				},
				bannerHide:function(banner){
					banner
						.show()
						.fadeOut(500)
				}
			});
		})
	</script>
</body>
</html>
