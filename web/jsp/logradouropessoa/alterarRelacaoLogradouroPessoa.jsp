<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>
<%@page import="backenddmn20222.models.beans.LogradouroPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouroPessoa"%>

<%
    ControllerPessoaFisica pesController = new ControllerPessoaFisica();
    PessoaFisica pf = new PessoaFisica("");
    List<PessoaFisica> pessoas = pesController.listar(pf);

    ControllerLogradouro logController = new ControllerLogradouro();
    Logradouro logradouroEntrada = new Logradouro("");
    List<Logradouro> logradouros = logController.listar(logradouroEntrada);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    LogradouroPessoa logradouroPessoa = new LogradouroPessoa(id);
    ControllerLogradouroPessoa controller = new ControllerLogradouroPessoa();
    logradouroPessoa = controller.buscar(logradouroPessoa);
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - LOGRADOURO PESSOA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - LOGRADOURO PESSOA</h1>
        <form name="alterarLogradouroPessoa" action="validaAlterarRelacaoLogradouroPessoa.jsp" method="post">
            <table>
                <tr>
                    <td>Logradouro:</td>
                        <td>
                            <select NAME="ID_LOGRADOURO" class="browser-default">
                                <% for (Logradouro logradouro : logradouros) { %>
                                    <% if( logradouro.getId() == logradouroPessoa.getIdLogradouro()) { %>
                                        <option selected value="<%=logradouro.getId()%>"><%=logradouro.getEndereco()%></option>
                                    <% } else { %>
                                        <option value="<%=logradouro.getId()%>"><%=logradouro.getEndereco()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Pessoa:</td>
                        <td>
                            <select NAME ="ID_PESSOA" class="browser-default">
                                <% for (PessoaFisica pessoa : pessoas) { %>
                                    <% if( pessoa.getId()== logradouroPessoa.getIdPessoa()) { %>
                                        <option selected value="<%=pessoa.getId()%>"><%=pessoa.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=pessoa.getId()%>"><%=pessoa.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value="<%=logradouroPessoa.getObs()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=logradouroPessoa.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>