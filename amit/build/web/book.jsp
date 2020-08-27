<%-- 
    Document   : book
    Created on : 5 May, 2020, 6:42:21 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
              <style>
            h1{
  border-radius: 25px;
  background: url(images/l2.jpg);
  padding: 20px; 
  width: 1000px;
  height: 70px; }
            .l1{font-size: 1.0em;}
            button{
overflow:auto;
text-align: center;
font-size: 1.0em;
font-weight: bold;
line-height: 200%;}
.d{
  height: 100%;
  width: 160px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color:palevioletred;
  overflow-x: hidden;
  padding-top: 20px;}
.d1{ margin-left: 160px;}
.rectangle {background-color: white; width: 600px;margin-bottom: 20px;}
i{margin-left: 200px;}
           
        </style>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
    <center><h1 style="color:aqua" ><b>Welcome to Library</b></h1></center>
    <div class="d">
        <h2 style="color:khaki"><b>Library CC</b></h2></br>
        </br>
        <a href="book.html" style="color:black; font-size: 20px">Books</a></br>
        </br>
        <a href="category.html" style="color:black; font-size: 20px">Category</a></br>
        </br>
        <a href="author.html" style="color:black; font-size: 20px">Author</a></br>
        </br>
        <a href="student.html" style="color:black; font-size: 20px">Student</a></br>
        </br>
        <a href="issuehis.jsp" style="color:black; font-size: 20px">Issue date</a></br>
        </br>
        <input type="button" value="Logout" name="logout" class="l1">
    </div>
    <div class="d1">
        <table style="size: 10px">
            <tr>
                <td style="background-color: yellow"><b><center><input type="button" value="Profile" name="p"></center></b></td><td width="20%"></td>
                <td style="background-color: blanchedalmond"><b><input type="button" value="Books" name="b"></b></td><td width="20%"></td>
                <td style="background-color: red" ><b><input type="button" value="Home" name="h"></b></td><td width="20%"></td>
                <td style="background-color: blueviolet" ><b><input type="button" value="About us" name="a"></b></td>            </tr>
        </table></div>
    </br>
    </br>
    </br>
        <i class="glyphicon glyphicon-book"><input type="text" name="a" class="text" size="4"><br>Total number<br> of books</i>
         <i class="glyphicon glyphicon-heart"><input type="text" name="a" class="text" size="4"><br>Total students</i>
        <i class="glyphicon glyphicon-bookmark"><input type="text" name="a" class="text" size="4"><br>Total issues today</i>
        <i class="glyphicon glyphicon-star"><input type="text" name="a" class="text" size="4"><br>Total books out</i>
    </body>
</html>
