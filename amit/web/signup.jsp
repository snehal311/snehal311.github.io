<%-- 
    Document   : signup
    Created on : 5 May, 2020, 6:12:07 PM
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
    <body style='background-color: palevioletred'>
        <form action='regchecking.jsp' method='post'>
    <center><h1><b>Registration</b></h1></center>
    <div align='center'>
        Name:<input type='text' name='name'/><br>
        Username:<input type='text' name='uname'/><br/>
        Password:<input type='password' name='pss'/><br/>
        Confirm Password:<input type='password' name='cpss'/><br/>
        Address:<input type='text' name='adr'/><br/>
        Contact number:<input type='text' name='cnt'/><br/>
        Usertype:<input type='text' name='utype'/><br/>
        <input type='submit' value='register' name='reg'/>
        <input type='submit' value='reset' name='reset'/>
    </div>
        </form>
        
    </body>
</html>
