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

    ControllerLogradouro usuController = new ControllerLogradouro();
    Logradouro logradouroEntrada = new Logradouro("");
    List<Logradouro> logradouros = usuController.listar(logradouroEntrada);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR LOGRADOURO PESSOA</title>
    <body>
        <div class="container"/>
            <h1>Inseri Logradouro Pessoa</h1>
            <form name="inseriLogradouroPessoa" action="validaRelacaoLogradouroPessoa.jsp" method="POST">
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
                            <select NAME="ID_LOGRADOURO" class="browser-default">
                                <% for (Logradouro logradouro : logradouros) { %>
                                    <option value="<%=logradouro.getId()%>"><%=logradouro.getEndereco()%></option>
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
