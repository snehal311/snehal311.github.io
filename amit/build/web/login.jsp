<%-- 
    Document   : login
    Created on : 4 Jun, 2020, 8:48:00 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String sql="select usertype from userinfo";
                    try{
                        //Connection con;
                       // PreparedStatement ps;
                        //ResultSet rs;"jdbc:derby://localhost:1527/library","admin1","1234"
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                        Connection con=DriverManager.getConnection("");
                        PreparedStatement ps=con.prepareStatement(sql);
                        ResultSet rs=ps.executeQuery();
                        %>
                        <form action="checkinfo1.jsp" method="post">
                        <center><h2 style="color:green">Login</h2></center>
                        <table border="10"  align="center">
                            <tr style='size: 20'>
                                <td>Enter your name:</td>
                                <td><input type="text" name="n"/></td>
                            </tr>
                            <tr>
                                <td>Enter your password:</td>
                                <td><input type="password" name="password"</td></tr>
                            <tr>
                                <td>
                                   Select Usertype
                                </td>
                                        <td><select name="usertype">
                                                <option value="student">Student</option>
                                                <option value="admin">Admin</option>
                                                <%
                                                    while(rs.next())
                                                    {
                                                        String usertype=rs.getString("usertype");
                                                        %>
                                                        <option value=<%=usertype%><%=usertype%>></option>
                                                        <% 
                                                            }
}

                                                        
                                                        
                    catch(SQLException sqe)
                    {
                       out.println("home"+sqe);
                    }
                                                        %>

                                            </select></td>
                            </tr>
                            <tr><td></td>
                                <td><input type="submit" value="submit"/></td></tr>
                        </table>
</form>
                                                        
        
    </body>
</html>
