<%-- 
    Document   : ListPets
    Created on : Aug 29, 2022, 7:38:46 AM
    Author     : joseb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="bo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            List<Store> stores = (ArrayList) request.getSession().getAttribute("stores");
            
            String txtIndexStore = request.getParameter("txtIndexStore");
            int indexStore = Integer.valueOf(txtIndexStore);
            Store store = stores.get(indexStore);
            List<Pet> pets = store.getPets();
            String txtCreate = request.getParameter("txtCreate");
            boolean create = (txtCreate != null);
            if (pets == null && !create) {
                out.println("NO HAY REGISTROS <br>");
                out.println("<a href='List.jsp'>Ver datos</a>");
            } else {
                out.println("<h1>LISTADO DE MASCOTAS DE LA TIENDA: " + store.getName() + "</h1>");
            
            String deleteIndex = request.getParameter("txtDeleteIndex");
            String updateIndex = request.getParameter("txtUpdateIndex");
            
           
            
            if (deleteIndex != null) {
                int index = Integer.valueOf(deleteIndex);
                pets.remove(index);
                store.setPets(pets);
            }
            
            if (updateIndex != null) {
                int index = Integer.valueOf(updateIndex);
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String tipo = request.getParameter("txtType");
                Pet pet = new Pet(code, name, tipo);
                
                pets.set(index, pet);
                store.setPets(pets);
            }
            
            if (create) {
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String tipo = request.getParameter("txtType");
                
                Pet pet = new Pet(code, name, tipo);
                if (pets == null) {
                    pets = new ArrayList<>();
                    pets.add(pet);
                    store.setPets(pets);
                } else {
                    pets.add(pet);
                    store.setPets(pets);
                }
            }
            
            if (pets == null) {
                out.println("No existen mascotas en esta tienda <br>");
            } else {
                out.println("<table border='1'>");
                out.println("<tr>");
                out.println("<th>Codigo </th>");
                out.println("<th>Nombre </th>");
                out.println("<th>Tipo </th>");
                out.println("</tr>");
                
                int i = 0;
                for (Pet pet: pets) {
                    out.println("<tr>");
                    out.println("<td>" + pet.getCode() + " </td>");
                    out.println("<td>" + pet.getName() + " </td>");
                    out.println("<td>" + pet.getType() + " </td>");
                    out.println("<td> <a href='DeletePet.jsp?registro="+ i +"&store="+ indexStore + "'>Eliminar</a>");
                    out.println("<td> <a href='UpdatePet.jsp?registro="+ i +"&store="+ indexStore + "'>Modificar</a>");
                    out.println("</tr>");
                    i++;
                }
                out.println("</table>");
                out.println("<a href='List.jsp'>Ver datos</a>");
            }
            }
            
            
        %>
    </body>
</html>
