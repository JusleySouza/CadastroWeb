<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>

<%
    String cep = request.getParameter("CEP");
    Logradouro logradouro = new Logradouro(cep);
    ControllerLogradouro controller = new ControllerLogradouro();
    List<Logradouro> logradouros = controller.listar(logradouro);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + cep+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA LOGRADOUROS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Endereco">Endereco</th>
                  <th data-field="Cep">Cep</th>
                  <th data-field="Numero">Numero</th>
                  <th data-field="Complemento">Complemento</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(logradouros.isEmpty())) { %>    
                <tbody>
                    <% for (Logradouro listaLogradouros : logradouros) { %>
                        <tr>
                            <td><%=listaLogradouros.getId()%></td>
                            <td><%=listaLogradouros.getEndereco()%></td>
                            <td><%=listaLogradouros.getCep()%></td>
                            <td><%=listaLogradouros.getNumero()%></td>
                            <td><%=listaLogradouros.getComplemento()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirLogradouro.jsp?<%=url + listaLogradouros.getId()%>">Excluir</a></td>
                                <td><a href="alterarLogradouro.jsp?<%=url + listaLogradouros.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>