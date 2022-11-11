<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmn20222.models.beans.Contato"%>
<%@page import="backenddmn20222.controllers.ControllerContato"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>
<%@page import="backenddmn20222.models.beans.ContatoPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerContatoPessoa"%>

<%
    ControllerPessoaFisica pessoaController = new ControllerPessoaFisica();
    PessoaFisica pf = new PessoaFisica("");
    List<PessoaFisica> pessoas = pessoaController.listar(pf);

    ControllerContato contatoController = new ControllerContato();
    Contato contato = new Contato("");
    List<Contato> contatos = contatoController.listar(contato);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR CONTATO PESSOA</title>
    <body>
        <div class="container"/>
            <h1>Inseri Contato Pessoa</h1>
            <form name="inseriContatoPessoa" action="validaRelacaoContatoPessoa.jsp" method="POST">
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
                        <td>Contato:</td>
                        <td>
                            <select NAME="ID_CONTATO" class="browser-default">
                                <% for (Contato con : contatos) { %>
                                    <option value="<%=con.getId()%>"><%=con.getEmail()%></option>
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
