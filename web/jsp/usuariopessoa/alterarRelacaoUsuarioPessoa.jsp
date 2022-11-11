<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerUsuario"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>
<%@page import="backenddmn20222.models.beans.UsuarioPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerUsuarioPessoa"%>

<%
    ControllerPessoaFisica pesController = new ControllerPessoaFisica();
    PessoaFisica pf = new PessoaFisica("");
    List<PessoaFisica> pessoas = pesController.listar(pf);

    ControllerUsuario usuController = new ControllerUsuario();
    Usuario usuEnt = new Usuario("");
    List<Usuario> usuarios = usuController.listar(usuEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    UsuarioPessoa usuarioPessoa = new UsuarioPessoa(id);
    ControllerUsuarioPessoa controller = new ControllerUsuarioPessoa();
    usuarioPessoa = controller.buscar(usuarioPessoa);
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - USUÁRIO PESSOA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - USUÁRIO PESSOA</h1>
        <form name="alterarUsuarioPessoa" action="validaAlterarRelacaoUsuarioPessoa.jsp" method="post">
            <table>
                <tr>
                    <td>Usuario:</td>
                        <td>
                            <select NAME="ID_USUARIO" class="browser-default">
                                <% for (Usuario usuario : usuarios) { %>
                                    <% if( usuario.getId() == usuarioPessoa.getIdUsuario()) { %>
                                        <option selected value="<%=usuario.getId()%>"><%=usuario.getLogin()%></option>
                                    <% } else { %>
                                        <option value="<%=usuario.getId()%>"><%=usuario.getLogin()%></option>
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
                                    <% if( pessoa.getId()== usuarioPessoa.getIdPessoa()) { %>
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
                        <td><input type="text" name="OBS" value="<%=usuarioPessoa.getObs()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=usuarioPessoa.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>