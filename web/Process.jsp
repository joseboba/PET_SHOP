<%-- 
    Document   : Process
    Created on : Aug 29, 2022, 6:48:34 AM
    Author     : joseb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="bo.Store" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process Data</title>
    </head>
    <body>
        <h1>GUARDANDO EL REGISTRO...</h1>
        <%
            String nit = request.getParameter("txtNit");
            String name = request.getParameter("txtName");
            String address = request.getParameter("txtAddress");
            String email = request.getParameter("txtEmail");
            String phone = request.getParameter("txtPhone");
            
           List<Store> stores = (ArrayList) request.getSession().getAttribute("stores");
           Store store = new Store(nit, name, address, email, phone);
           if (stores == null) {
               stores = new ArrayList<>();
               stores.add(store);
               request.getSession().setAttribute("stores", stores);
           } else {
               stores.add(store);
               request.getSession().setAttribute("stores", stores);
           }
        %>
        <a href="List.jsp">Listar Datos</a> <br>
        <a href="CreateStore.jsp">Regresa a registro</a>
    </body>
</html>
