<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.models.beans.Contato"%>
<%@page import="backenddmn20222.controllers.ControllerContato"%>

<%
    String email = request.getParameter("EMAIL");
    Contato contato = new Contato(email);
    ControllerContato controller = new ControllerContato();
    List<Contato> contatos = controller.listar(contato);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + email+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA CONTATOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Telefone">telefone</th>
                  <th data-field="Email">Email</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(contatos.isEmpty())) { %>    
                <tbody>
                    <% for (Contato listaContatos : contatos) { %>
                        <tr>
                            <td><%=listaContatos.getId()%></td>
                            <td><%=listaContatos.getTelefone()%></td>
                            <td><%=listaContatos.getEmail()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirContato.jsp?<%=url + listaContatos.getId()%>">Excluir</a></td>
                                <td><a href="alterarContato.jsp?<%=url + listaContatos.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>