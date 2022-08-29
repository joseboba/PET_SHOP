<%-- 
    Document   : DeletePet
    Created on : Aug 29, 2022, 7:39:31 AM
    Author     : joseb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Pet</title>
    </head>
    <body>
         <h1> ELIMINAR MASCOTA </h1>
        <h4> ¿Confirma que desea eliminar la mascota?</h4>
        <form action="ListPets.jsp" method="POST">
            <%
                int store = Integer.valueOf(request.getParameter("store"));
                int index = Integer.valueOf(request.getParameter("registro"));
            %>
            
            <input type="hidden" name="txtIndexStore" value="<%=store%>" />
            <input type="hidden" name="txtDeleteIndex" value="<%=index%>" />
            <input type="submit" value="Si"  />
        </form>
        <a href="ListPets.jsp">No</a>
    </body>
</html>
