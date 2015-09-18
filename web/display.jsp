<%-- 
    Document   : display
    Created on : Sep 15, 2015, 3:16:28 PM
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
        <title> Select Operation</title>
        <script>
            function confirmGo(m,u)
            {
                if (confirm (m) )
                {
                    window.location=u;
                }
            }
        </script>
    </head>
    <body>
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/test"
     user="root"  password="sohani"/>
    
    <sql:query dataSource="${snapshot}" var="result">
            SELECT * from product;
     </sql:query>
            
    <center>
       <form>
           <table border="1" width="40%" bgcolor="white" style="border-color: #fff;color: #777;text-align: center;">
           <caption> product list</caption>
           <div >
             <tr>
                <th> Product Id </th>
                <th> Product Name </th> 
                <th> Quantity</th> 
             </tr>    
            <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.pid}"/></td>
                        <td><c:out value="${row.pname}"/></td>
                        <td><c:out value="${row.quantity}"/></td> 
                        <td><a href ="update.jsp?pid=<c:out value="${row.pid}"/>">Update</a></td>
                        <td> <a href="javascript:confirmGo('confirm to delete this record?','delete.jsp?pid=<c:out value="${row.pid}"/>')">DELETE</a> </td>>
                        
                    </tr>
                </c:forEach> 
           </div>
           </table>
       </form>
        <div class="goo">
          <a href="index.jsp">Go Home</a>
          </div>    
    </center>        
    </body>
</html>
