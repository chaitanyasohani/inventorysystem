<%-- 
    Document   : insert
    Created on : Sep 15, 2015, 2:28:36 PM
    Author     : leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link href="newcss.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Insert JSP Page</title>
    <script>  
    function validateform()
    {  
      var name=document.myform.pname.value;    
      var qty= document.myform.qty.value
      if (name==null || name=="")
       {  
         alert("Name can't be blank");  
         return false;  
       } 
      if (isNaN(qty))
       {  
          document.getElementById("numloc").innerHTML="Enter Numeric value only";  
          return false;  
         } else
        {  
          return true;  
        }  
       } 
    
    </script> 
    </head>

    <body>
        <div class="c1"> 
            <h3>PRODUCT INFORMATION</h3>
        <form name="myform" action="insertdb.jsp" method="post" onsubmit="return validateform()">
            <div class="g1">
                <label>Product Name :</label>
                <br />
                <input type="text"  name="pname" class="g12" placeholder="Enter Your Product name">
            </div>
            <div class="g1">
                <label>Quantity :</label>
                <br />
                <input type="text" name="qty" class="g12" placeholder="Enter Your Quantity"><span id="numloc" style="color: red"></span>
            </div>
            <div class="go">
                <div class="go1">
                    <button type="submit" value="Save">SAVE</button>
                </div>
                <div class="go2">
                    <button type="reset" value="reset">RESET</button>
                </div>
            </div>
            <div class="goo">
                <a href="index.jsp">BACK</a>
            </div>
            
            
            
            <!--<table border="0" cellspacing="2" cellpadding="5">
                 <thead>
                    <tr>
                        <th colspan="2">Product Information</th>
                    </tr>
                </thead>
                 <tbody>
                    <tr>
                        <td><label>Product Name</label></td>
                        <td><input type="text" name="pname"/></td>
                    </tr>
                    <tr>
                        <td><label>Quantity</label></td>
                        <td><input type="text" name="qty"/><span id="numloc"></span><br/>  
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save" /></td>
                        <td><input type="reset" value="reset"/></td>
                    </tr>
                </tbody>
            </table>-->
        
        </form>
            <div class="clr"></div>
        </div>
       
    </body>
</html>
