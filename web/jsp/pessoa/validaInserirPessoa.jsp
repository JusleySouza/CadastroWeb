<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>

<%
    String nome = request.getParameter("NOME");
    String rg = request.getParameter("RG");
    String cpf = request.getParameter("CPF");
 
    PessoaFisica pes = new PessoaFisica(nome,rg,cpf);
    ControllerPessoaFisica pescont = new ControllerPessoaFisica();
    pes = pescont.inserir(pes);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirPessoa.jsp";
    response.sendRedirect(url);
%>

