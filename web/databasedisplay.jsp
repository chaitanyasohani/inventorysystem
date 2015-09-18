<%-- 
    Document   : databasedisplay
    Created on : Sep 16, 2015, 1:22:15 PM
    Author     : leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="newcss.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Database Records</title>
    </head>
    <body>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/test"
     user="root"  password="sohani"/>
          <h3 style="margin: 62px auto;color: #fff;border-bottom: 3px solid #fff;">DATABASE DISPLAY :</h3>
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from login;
     </sql:query>
            
    <center>
       <form>
           <table border="1" width="40%" bgcolor="white" style="width: 50%;text-align: center;">
               
             <tr>
                <th style="padding: 15px;"> User Id </th>
                <th style="padding: 15px;"> Password </th> 
                <th style="padding: 15px;"> Mobile </th> 
             </tr>    
            <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.uname}"/></td>
                        <td><c:out value="${row.passwd}"/></td>
                        <td><c:out value="${row.mobile}"/></td>      
                    </tr>
                </c:forEach>  
           </table>
        </form>
        <div class="goo" style="margin-top: 20px;">
          <a href="displayxmlrecords.jsp">Back</a></div>
    </center>                
    </body>
</html>
