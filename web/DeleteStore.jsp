<%-- 
    Document   : DeleteStore
    Created on : Aug 29, 2022, 7:04:43 AM
    Author     : joseb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Store</title>
    </head>
    <body>
        <h1> ELIMINAR TIENDA </h1>
        <h4> ¿Confirma que desea eliminar la tienda?</h4>
        <form action="List.jsp" method="POST">
            <%
                int index = Integer.valueOf(request.getParameter("registro"));
            %>
            <input type="hidden" name="txtDeleteIndex" value="<%=index%>" />
            <input type="submit" value="Si"  />
        </form>
        <a href="List.jsp">No</a>
    </body>
</html>
