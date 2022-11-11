<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PessoaFisica pessoa = new PessoaFisica(id);
    ControllerPessoaFisica controller = new ControllerPessoaFisica();
    pessoa = controller.buscar(pessoa);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PESSOA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR PESSOA</h1>
        <form name="alterarPessoa" action="validaAlterarPessoa.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=pessoa.getNome()%>"> <br>
            Rg: <input type="text" name="RG" value="<%=pessoa.getRg()%>"> <br>
            Cpf: <input type="text" name="CPF" value="<%=pessoa.getCpf()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=pessoa.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>