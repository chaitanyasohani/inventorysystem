<%-- 
    Document   : xmlinsertdatabase
    Created on : Sep 16, 2015, 1:47:56 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> XML insert database </title>
    </head>
    <body>
       <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost/test"
        user="root"  password="sohani"/>  
       
        <c:import var="PersonInfo" url="http://localhost:8080/webjstlcrud/person.xml"/>
       
        <x:parse xml="${PersonInfo}" var="output"/>
        
        <x:forEach select="$output/user/person" var="per">
              <tr>
        <td>
       
         <x:set var="puname" select="string($per/uname)" scope="session"/>
         </td>
         <td>
      
         <x:set var="ppass" select="string($per/password)" scope="session"/>
         </td>
         <td>
        
         <x:set var="pmob" select="string($per/mobile)" scope="session"/>
         </td>    
      </tr>      
       
       <sql:update dataSource="${snapshot}" var="result">
        INSERT INTO login  VALUES (?,?,?);
        <sql:param value="${puname}" />
        <sql:param value="${ppass}" />
        <sql:param value="${pmob}" />
        </sql:update>   
        </x:forEach>
         
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
        
        <a href="displayxmlrecords.jsp">Back</a>
     </body>    
</html>
