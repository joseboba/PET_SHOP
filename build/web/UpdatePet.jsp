<%-- 
    Document   : UpdatePet
    Created on : Aug 29, 2022, 7:39:13 AM
    Author     : joseb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="bo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE PETS</title>
    </head>
    <body>
       <h1> ACTUALIZAR MASCOTA </h1>
         <%
            List<Store> stores = (ArrayList) request.getSession().getAttribute("stores");
            int storeIndex = Integer.valueOf(request.getParameter("store"));
            int index = Integer.valueOf(request.getParameter("registro"));
            Store store = stores.get(storeIndex);
            Pet pet = store.getPets().get(index);
          %>
        <form action="ListPets.jsp" method="POST">
            Codigo:        <input type="text" name="txtCode" value="<%=pet.getCode()%>" /> <br> 
            Nombre:        <input type="text" name="txtName" value="<%=pet.getName()%>" /> <br> 
            Tipo:          <input type="text" name="txtType" value="<%=pet.getType()%>" /> <br> 
            
            <input type="hidden" name="txtIndexStore" value="<%=storeIndex%>" />
            <input type="hidden" name="txtUpdateIndex" value="<%=index%>" />
            <input type="submit" name="btnUpdate" value="Actualizar" />
        </form>
        
        <a href="ListPets.jsp">Ver datos</a>
    </body>
</html>
