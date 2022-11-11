<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String rg = request.getParameter("RG");
    String cpf = request.getParameter("CPF");
    String pbusca = request.getParameter("PBUSCA");
    PessoaFisica pessoa = new PessoaFisica(id,nome,rg,cpf);
    ControllerPessoaFisica controller = new ControllerPessoaFisica();
    pessoa = controller.alterar(pessoa);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPessoa.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>