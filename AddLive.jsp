
								<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DBInfo"%>
<%@page import="java.sql.Connection"%>
<%								
								    
				        int flag=0;
				        String id=request.getParameter("id");
				        String project_name=request.getParameter("project_name");
				         if(id!=null && project_name!=null){
				       
				        Connection con=DBInfo.getConnection();
				        String query="insert into start values(?,?)";
				        PreparedStatement ps=con.prepareStatement(query);
 				        ps.setString(1,id);
				        ps.setString(2,project_name);
				        flag=ps.executeUpdate();
				        if(flag==0){
				       
				         %>
				         <h1 style="text-align: center; color: red; font-size: 24px;">Record not Inserted</h1>
				         <jsp:include page="AddLiveProjects.jsp"></jsp:include>
				       <%
				      
				        }
				        else{
				      
				       %>
				        <h1 style="text-align: center; color: red; font-size: 24px;">Record Inserted</h1>
				  		    <jsp:include page="AddLiveProjects.jsp"></jsp:include>
		               <%
				      
				        }
				        }
				         %>
				        					      
				
							