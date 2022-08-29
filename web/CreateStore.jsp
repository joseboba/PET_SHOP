<%-- 
    Document   : CreateStore
    Created on : Aug 29, 2022, 6:41:41 AM
    Author     : joseb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bo.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Store</title>
    </head>
    <body>
         <h1>REGISTRO DE INFORMACION</h1>
         <form action="Process.jsp" method="POST">
            NIT:        <input type="text" name="txtNit" /> <br> <br>
            Nombre:     <input type="text" name="txtName" /> <br> <br>
            Dirección:  <input type="text" name="txtAddress" /> <br> <br>
            Email:      <input type="text" name="txtEmail" /> <br> <br>
            Telefono:   <input type="number" name="txtPhone" /> <br> <br>
            
            <input type="submit" name="btnSave" value="Guardar" />
        </form>
        
        <a href="List.jsp">Ver datos</a>
    </body>
</html>
