<%-- 
    Document   : checkinfo1
    Created on : 4 Jun, 2020, 8:51:13 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        String name=request.getParameter("n");
        String password=request.getParameter("password");
        String sql="select * from userinfo";
        try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/library","admin1","1234");
             PreparedStatement ps=con.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
            String dun=rs.getString(3);
            String dp=rs.getString(4);
            if(dun.equals(name)&& dp.equals(password))
            {
                %>
                <h1 style="color:blue"><b>Welcome</b></h1>
                <%
                    response.sendRedirect("book.jsp");
            }
else
{
%>
<h1 style="color:blue"><b>You entered wrong information</b></h1>
<%
}
        }
}catch(SQLException e)
{
out.println(e);
}
%>
        
    </body>
</html>
