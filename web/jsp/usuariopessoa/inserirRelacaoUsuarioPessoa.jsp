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
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR USUARIO PESSOA</title>
    <body>
        <div class="container"/>
            <h1>Inseri Usuario Pessoa</h1>
            <form name="inseriUsuarioPessoa" action="validaRelacaoUsuarioPessoa.jsp" method="POST">
                <table>
                    <tr>
                        <td>Pessoa:</td>
                        <td>
                            <select NAME ="ID_PESSOA" class="browser-default">
                                <% for (PessoaFisica pessoa : pessoas) { %>
                                    <option value="<%=pessoa.getId()%>"><%=pessoa.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Usuario:</td>
                        <td>
                            <select NAME="ID_USUARIO" class="browser-default">
                                <% for (Usuario usuario : usuarios) { %>
                                    <option value="<%=usuario.getId()%>"><%=usuario.getLogin()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
