<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Contato"%>
<%@page import="backenddmn20222.controllers.ControllerContato"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Contato contato = new Contato(id);
    ControllerContato controller = new ControllerContato();
    contato = controller.buscar(contato);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CONTATO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR CONTATO</h1>
        <form name="alterarContato" action="validaAlterarContato.jsp" method="post">
            Telefone: <input type="text" name="TELEFONE" value="<%=contato.getTelefone()%>"> <br>
            Email: <input type="text" name="EMAIL" value="<%=contato.getEmail()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=contato.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>