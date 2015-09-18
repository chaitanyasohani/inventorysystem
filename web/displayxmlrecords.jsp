<%-- 
    Document   : displayxmlrecords
    Created on : Sep 16, 2015, 12:53:07 PM
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
        <title>Display xml Records</title>
    </head>
    <body>
      <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost/test"
        user="root"  password="sohani"/>  
      
      <h3 style="margin: 62px auto;color: #fff;border-bottom: 3px solid #fff;">PERSON INFO:</h3>
        <c:import var="PersonInfo" url="http://localhost:8080/webjstlcrud/person.xml"/>
        
         <x:parse xml="${PersonInfo}" var="output"/>
         
         <table border="1" cellspacing="2" cellpadding="2" bgcolor="white" align="center" style="width: 50%;text-align: center;">
       <tr>
           <th style="padding: 15px;">USER NAME</th>
        <th style="padding: 15px;">PASSWORD</th>
        <th style="padding: 15px;">MOBILE</th>
      </tr>
      
       <x:forEach select="$output/user/person" var="per">
       <tr>
        <td>
         <x:out select="$per/uname" />
         <x:set var="puname" select="string($per/uname)" scope="session"/>
         </td>
         <td>
         <x:out select="$per/password" />
         <x:set var="ppass" select="string($per/password)" scope="session"/>
         </td>
         <td>
         <x:out select="$per/mobile" />
         <x:set var="pmob" select="string($per/mobile)" scope="session"/>
         </td>    
      </tr>    
      </x:forEach>  
      </table>
         <div class="b1"> 
                <ul> 
                   <li><a href="databasedisplay.jsp" >Database Display</a> </li>
                   <li><a href="xmlinsertdatabase.jsp"> Save into Database</a></li>
                   <li><a href="index.jsp">Back</a></li>
                </ul>
        </div>
    </body>
</html>
