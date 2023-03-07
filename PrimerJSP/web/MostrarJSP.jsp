<%-- 
    Document   : MostrarJSP
    Created on : 6 mar 2023, 13:54:29
    Author     : sgenovese
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <h1>Lista de Clientes</h1>
        <%@page import="java.util.List" %>
        <%@page import="Clases.Cliente" %>
    <%
        List<Cliente> listaClientes = (List) request.getSession().getAttribute("listaClientes");
        int cont=1;
        for(Cliente cli: listaClientes){
    %>
    <p><b>Cliente N°: <%=cont%></b></p>
    <p>Dni: <%=cli.getDni()%></p>
    <p>Nombre: <%=cli.getNombre()%></p>
    <p>Apellido: <%=cli.getApellido()%></p>
    <p>Telefono: <%=cli.getTelefono()%></p>
    <%cont++;%>
    <%}%>
        
    </body>
</html>
