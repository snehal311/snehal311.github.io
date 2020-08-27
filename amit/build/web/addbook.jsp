<%-- 
    Document   : addbook
    Created on : 5 May, 2020, 8:04:58 PM
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
            String btitle=request.getParameter("title");
            String bcategory=request.getParameter("category");
            String bauthor=request.getParameter("author");
            String bpublisher=request.getParameter("publisher");
            String bedition=request.getParameter("edition");
            String bvolume=request.getParameter("volume");
            String bprice=request.getParameter("price");
            String blan=request.getParameter("language");
            String bdes=request.getParameter("description");
            String sql="insert into book(title,category,author,publisher,edition,volume,price,language,description) values(?,?,?,?,?,?,?,?,?)";
            String userName="root";
            String password="root";
           try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library",userName,password);
                PreparedStatement st=con.prepareStatement(sql);
                st.setString(1,btitle);
                st.setString(2,bcategory);
                st.setString(3,bauthor);
                st.setString(4,bpublisher);
                st.setString(5,bedition);
                st.setString(6,bvolume);
                st.setString(7,bprice);
                st.setString(8,blan);
                st.setString(9,bdes);
                st.executeUpdate();
                int i=st.executeUpdate();
                if(i!=0)
                {
                   out.println("Book successfully added");
                }
            }
            catch(Exception e)
            {
             out.print(e);   
            }
            %>
    </body>
</html>
