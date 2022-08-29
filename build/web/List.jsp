<%-- 
    Document   : List
    Created on : Aug 29, 2022, 6:55:47 AM
    Author     : joseb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="bo.Store" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Stores</title>
    </head>
    <body>
        <h1>LISTADO DE TIENDAS</h1>
        <%
            List<Store> stores = (ArrayList) request.getSession().getAttribute("stores");
            String deleteIndex = request.getParameter("txtDeleteIndex");
            String updateIndex = request.getParameter("txtUpdateIndex");
            
            if (stores != null && deleteIndex != null) {
                int index = Integer.valueOf(deleteIndex);
                stores.remove(index);
                request.getSession().setAttribute("stores", stores);
                stores = (ArrayList) request.getSession().getAttribute("stores");
            }
            
            if (stores != null && updateIndex != null) {
                int index = Integer.valueOf(updateIndex);
                String nit = request.getParameter("txtNit");
                String name = request.getParameter("txtName");
                String address = request.getParameter("txtAddress");
                String email = request.getParameter("txtEmail");
                String phone = request.getParameter("txtPhone");
                Store store = new Store(nit, name, address, email, phone);
                stores.set(index, store);
                request.getSession().setAttribute("stores", stores);
                stores = (ArrayList) request.getSession().getAttribute("stores");
            }
            
            if (stores == null) {
                out.println("No existen tiendas <br>");
            } else {
                out.println("<table border='1'>");
                out.println("<tr>");
                out.println("<th>NIT </th>");
                out.println("<th>Nombre </th>");
                out.println("<th>Direccion </th>");
                out.println("<th>Email </th>");
                out.println("<th>Telefono </th>");
                out.println("</tr>");
                
                int i = 0;
                for (Store store: stores) {
                    out.println("<tr>");
                    out.println("<td>" + store.getNit() + " </td>");
                    out.println("<td>" + store.getName() + " </td>");
                    out.println("<td>" + store.getAddress() + " </td>");
                    out.println("<td>" + store.getEmail() + " </td>");
                    out.println("<td>" + store.getPhone() + " </td>");
                    out.println("<td> <a href='CreatePet.jsp?registro="+ i +"'>Agregar Mascota</a>");
                    out.println("<td> <a href='ListPets.jsp?txtIndexStore="+ i +"'>Listar Mascotas</a>");
                    out.println("<td> <a href='DeleteStore.jsp?registro="+ i +"'>Eliminar</a>");
                    out.println("<td> <a href='UpdateStore.jsp?registro="+ i +"'>Modificar</a>");
                    out.println("</tr>");
                    i++;
                }
                out.println("</table>");
            }
        %>
        
        <a href="CreateStore.jsp">Regresar a registro</a>
    </body>
</html>