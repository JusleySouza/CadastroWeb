<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Logradouro logradouro = new Logradouro(id);
    ControllerLogradouro controller = new ControllerLogradouro();
    logradouro = controller.buscar(logradouro);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - LOGRADOURO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR LOGRADOURO</h1>
        <form name="alterarLogradouro" action="validaAlterarLogradouro.jsp" method="post">
            Endereco: <input type="text" name="ENDERECO" value="<%=logradouro.getEndereco()%>"> <br>
            Cep: <input type="text" name="CEP" value="<%=logradouro.getCep()%>"> <br>
            Numero: <input type="text" name="NUMERO" value="<%=logradouro.getNumero()%>"> <br>
            Complemento: <input type="text" name="COMPLEMENTO" value="<%=logradouro.getComplemento()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=logradouro.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>