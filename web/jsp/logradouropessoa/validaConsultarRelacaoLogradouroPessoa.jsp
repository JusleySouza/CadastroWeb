<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerUsuario"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>
<%@page import="backenddmn20222.models.beans.LogradouroPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouroPessoa"%>

<%
    String obs = request.getParameter("OBS");
    LogradouroPessoa logradouroPessoa = new LogradouroPessoa(obs);
    ControllerLogradouroPessoa controller = new ControllerLogradouroPessoa();
    List<LogradouroPessoa> logradouros = controller.listar(logradouroPessoa);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + logradouroPessoa.getObs()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA LOGRADOUROS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdLogradouroPessoa">Id</th>
                  <th data-field="IdPessoa">IdPessoa</th>
                  <th data-field="NomePessoa">NomePessoa</th>
                  <th data-field="IdLogradouro">IdLogradouro</th>
                  <th data-field="Endereco">Endereco</th>
                  <th data-field="Numero">Numero</th>
                  <th data-field="Observacao">Observacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(logradouros.isEmpty())) { %>    
                <tbody>
                    <% for (LogradouroPessoa listaLogradouroPessoa : logradouros) { %>
                        <tr>
                            <td><%=listaLogradouroPessoa.getId()%></td>
                            <td><%=listaLogradouroPessoa.getIdPessoa()%></td>
                            <td><%=listaLogradouroPessoa.getPessoa().getNome()%></td>
                            <td><%=listaLogradouroPessoa.getIdLogradouro()%></td>
                            <td><%=listaLogradouroPessoa.getLogradouro().getEndereco()%></td>
                            <td><%=listaLogradouroPessoa.getLogradouro().getNumero()%></td>
                            <td><%=listaLogradouroPessoa.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoLogradouroPessoa.jsp?<%=url + listaLogradouroPessoa.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoLogradouroPessoa.jsp?<%=url + listaLogradouroPessoa.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>