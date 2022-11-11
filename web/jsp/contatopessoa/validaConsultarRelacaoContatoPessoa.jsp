<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerUsuario"%>
<%@page import="backenddmn20222.models.beans.Contato"%>
<%@page import="backenddmn20222.controllers.ControllerContato"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>
<%@page import="backenddmn20222.models.beans.ContatoPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerContatoPessoa"%>

<%
    String obs = request.getParameter("OBS");
    ContatoPessoa contatoPessoa = new ContatoPessoa(obs);
    ControllerContatoPessoa controller = new ControllerContatoPessoa();
    List<ContatoPessoa> contatoPessoas = controller.listar(contatoPessoa);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + contatoPessoa.getObs()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA CONTATOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdContatoPessoa">Id</th>
                  <th data-field="IdPessoa">IdPessoa</th>
                  <th data-field="NomePessoa">NomePessoa</th>
                  <th data-field="IdContato">IdContato</th>
                  <th data-field="Email">Email</th>
                  <th data-field="Observacao">Observacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(contatoPessoas.isEmpty())) { %>    
                <tbody>
                    <% for (ContatoPessoa listaContatoPessoa : contatoPessoas) { %>
                        <tr>
                            <td><%=listaContatoPessoa.getId()%></td>
                            <td><%=listaContatoPessoa.getIdPessoa()%></td>
                            <td><%=listaContatoPessoa.getPessoa().getNome()%></td>
                            <td><%=listaContatoPessoa.getIdContato()%></td>
                            <td><%=listaContatoPessoa.getContato().getEmail()%></td>
                            <td><%=listaContatoPessoa.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoContatoPessoa.jsp?<%=url + listaContatoPessoa.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoContatoPessoa.jsp?<%=url + listaContatoPessoa.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>