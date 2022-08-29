<%-- 
    Document   : CreatePet
    Created on : Aug 29, 2022, 7:38:58 AM
    Author     : joseb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>REGISTRO DE INFORMACION MASCOTA</h1>
         <%
             int index = Integer.valueOf(request.getParameter("registro"));
         %>
         <form action="ListPets.jsp" method="POST">
            Codigo:        <input type="text" name="txtCode" /> <br> 
            Nombre:        <input type="text" name="txtName" /> <br> 
            Tipo:          <input type="text" name="txtType" /> <br> 
            
            <input type="hidden" name="txtIndexStore" value="<%=index%>" />
            <input type="hidden" name="txtCreate" value="true" />
            <input type="submit" name="btnSavePet" value="Guardar" />
        </form>
        
        <a href="List.jsp">Ver datos</a>
    </body>
</html>
