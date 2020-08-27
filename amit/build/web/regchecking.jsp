<%-- 
    Document   : regchecking
    Created on : 5 May, 2020, 6:27:32 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String name=request.getParameter("name");
            String username=request.getParameter("uname");
            String password=request.getParameter("pss");
            String cpassword=request.getParameter("cpss");
            String address=request.getParameter("adr");
            String contact=request.getParameter("cnt");
            String utype=request.getParameter("utype");
            String sql="insert into userinfo(name,username,password,address,contactno,usertype) values(?,?,?,?,?,?)";
            String userName="root";
            String password1="root";
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library",userName,password1);
                PreparedStatement st=con.prepareStatement(sql);
                st.setString(1,name);
                st.setString(2,username);
                st.setString(3,password);
                st.setString(4,address);
                st.setString(5,contact);
                st.setString(6,utype);
                st.executeUpdate();
                int i=st.executeUpdate();
                if(i!=0)
                {
                    response.sendRedirect("book.jsp");
                }
            }
            catch(Exception e)
            {
             out.print(e);   
            }
%>

    </body>
</html>
