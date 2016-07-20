<jsp:useBean id="obj" class="p1.Login">
<jsp:setProperty property="*" name="obj"/>
</jsp:useBean>

<html>
  <head>

  </head>
  
  <body>
<%
int i=obj.checkLogin();
if(i==1)
{
response.sendRedirect("LoginPage.jsp");


}
if(i==2)
{
response.sendRedirect("LoginPage.jsp");


}
if(i==3)
{
response.sendRedirect("LoginPage.jsp");


}
if(i==0)
{
%>
<center><span style="color: #f00;text-align: center;">wrong email or password!!</span></center>
<jsp:include page="LogIn.html"></jsp:include>

<%
}


 %>
  </body>
</html>
