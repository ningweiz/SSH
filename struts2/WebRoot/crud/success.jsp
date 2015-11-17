<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addsucess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> 
   添加成功 
   <% 
   	try{
        	   //1.加载驱动
        	   Class.forName("oracle.jdbc.driver.OracleDriver");
        	   //2.得到连接
        	   Connection ct=DriverManager.getConnection("jdbc:oracle:thin:@202.201.3.49:1520:ssh","sshadmin","admin");
        	   
        	   Statement sm=ct.createStatement();
        	   
        	   ResultSet rs=sm.executeQuery("select *from users");
        	   out.println("<table style='width:200px;height:100px;'>");
        	     out.println("<tr><td>用户名</td><td>密码</td></tr>");
        	   while(rs.next()){
        	   	
        		   //用户名
        		  //out.println("用户名："+rs.getString("username"));
        		  //out.println("密码："+rs.getString("password"));
        	   String ename=rs.getString("username");
        	   String pw=rs.getString("password");
        	  
        	   out.println("<tr><td>"+ename+"</td><td>"+pw+"</td></tr>");
        	   }
        	   out.println("</table>");
           }catch (Exception e){
        	   
        	   e.printStackTrace();
           }
			
    %>
    <table>
   		<tr>
   		<td></td>
   		</tr>
   		</table>
  </body>
</html>
