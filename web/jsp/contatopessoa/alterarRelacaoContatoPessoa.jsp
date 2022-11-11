<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmn20222.models.beans.Contato"%>
<%@page import="backenddmn20222.controllers.ControllerContato"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>
<%@page import="backenddmn20222.models.beans.ContatoPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerContatoPessoa"%>

<%
    ControllerPessoaFisica pesController = new ControllerPessoaFisica();
    PessoaFisica pf = new PessoaFisica("");
    List<PessoaFisica> pessoas = pesController.listar(pf);

    ControllerContato conController = new ControllerContato();
    Contato contatoEntrada = new Contato("");
    List<Contato> contatos = conController.listar(contatoEntrada);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    ContatoPessoa contatoPessoa = new ContatoPessoa(id);
    ControllerContatoPessoa controller = new ControllerContatoPessoa();
    contatoPessoa = controller.buscar(contatoPessoa);
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CONTATO PESSOA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - CONTATO PESSOA</h1>
        <form name="alterarContatoPessoa" action="validaAlterarRelacaoContatoPessoa.jsp" method="post">
            <table>
                <tr>
                    <td>Contato:</td>
                        <td>
                            <select NAME="ID_CONTATO" class="browser-default">
                                <% for (Contato con : contatos) { %>
                                    <% if( con.getId() == contatoPessoa.getIdContato()) { %>
                                        <option selected value="<%=con.getId()%>"><%=con.getEmail()%></option>
                                    <% } else { %>
                                        <option value="<%=con.getId()%>"><%=con.getEmail()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Pessoa:</td>
                        <td>
                            <select NAME ="ID_PESSOA" class="browser-default">
                                <% for (PessoaFisica pes : pessoas) { %>
                                    <% if( pes.getId()== contatoPessoa.getIdPessoa()) { %>
                                        <option selected value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value="<%=contatoPessoa.getObs()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=contatoPessoa.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>