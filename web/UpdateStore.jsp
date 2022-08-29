<%-- 
    Document   : UpdateStore
    Created on : Aug 29, 2022, 7:04:24 AM
    Author     : joseb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bo.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Stire</title>
    </head>
    <body>
        <h1> ACTUALIZAR TIENDA </h1>
         <%
            List<Store> stores = (ArrayList) request.getSession().getAttribute("stores");
            int index = Integer.valueOf(request.getParameter("registro"));
            Store store = stores.get(index);
          %>
        <form action="List.jsp" method="POST">
            NIT:        <input type="text" name="txtNit" value="<%=store.getNit()%>" /> <br> <br>
            Nombre:     <input type="text" name="txtName" value="<%=store.getName()%>" /> <br> <br>
            Dirección:  <input type="text" name="txtAddress" value="<%=store.getAddress()%>" /> <br> <br>
            Email:      <input type="text" name="txtEmail" value="<%=store.getEmail()%>" /> <br> <br>
            Telefono:   <input type="number" name="txtPhone" value="<%=store.getPhone()%>" /> <br> <br>
            
            <input  type="hidden" name="txtUpdateIndex" value="<%=index%>">
            <input type="submit" name="btnUpdate" value="Actualizar" />
        </form>
        
        <a href="List.jsp">Ver datos</a>
    </body>
</html>
