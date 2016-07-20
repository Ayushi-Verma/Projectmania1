
								<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DBInfo"%>
<%@page import="java.sql.Connection"%>
<%								String id=request.getParameter("project_id");
								System.out.println(id);
								String date=request.getParameter("date");
								String project_name=request.getParameter("project_name");
								String category=request.getParameter("category");
								String description=request.getParameter("description");
								 String values[]=request.getParameterValues("downloadable");
								
							
								Connection con=DBInfo.getConnection();
							
								int flag=0;
								String query="insert into uploadproject values(?,?,?,?,?,?)";
								PreparedStatement ps=con.prepareStatement(query);
								ps.setString(1, id);
								ps.setString(2, date);
								ps.setString(3, project_name);
								ps.setString(4, category);
								ps.setString(5, description);
								for(String downloadable:values)
								 {
								 System.out.println(downloadable);
								 ps.setString(6,downloadable);
							     }
								
								flag=ps.executeUpdate();
								if(flag==0){
								out.print("record not inserted");
								}
								else{
								out.print("record inserted");
							    }
								
								 %>