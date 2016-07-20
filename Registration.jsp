<jsp:useBean id="obj" class="p1.Registration">
<jsp:setProperty property="*" name="obj"/>
</jsp:useBean>

<html>
  <head>

<style>

*{margin:0;padding:0;}

body{
  background:#567;
  font-family:'Open Sans',sans-serif;
}


#login h1{
  background:#3399cc;
  padding:20px 0;
  font-size:140%;
  font-weight:300;
  text-align:center;
  color:#fff;
}


a, a:hover
{ background: transparent;
  outline: none;
  text-decoration: none;
  color: #098EFF;
}

a:hover
{ text-decoration: underline;}

</style>
  </head>
  
  <body>
<%
int i=obj.checkRegistration();

if(i==1)
{
%>
<center>
<table align="center" bgcolor="#fff">
<tr>
<td>Registration Done to login </td><td><a href="LogIn.html">Click Here</a></td>
</tr>

</table>

<%
}
if(i==0){
%>
Registration failed!!!
<jsp:include page="Registration.html"></jsp:include>
<%
}


 %>
 </center>
  </body>
</html>
