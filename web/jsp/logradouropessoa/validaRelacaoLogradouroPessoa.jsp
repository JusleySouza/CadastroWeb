<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>
<%@page import="backenddmn20222.models.beans.LogradouroPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouroPessoa"%>

<%
    int idLogradouro = Integer.parseInt(request.getParameter("ID_LOGRADOURO"));
    int idPessoa = Integer.parseInt(request.getParameter("ID_PESSOA"));
    String obs = request.getParameter("OBS");
    LogradouroPessoa logradouroPessoa = new LogradouroPessoa(idLogradouro,idPessoa,obs);
    ControllerLogradouroPessoa controller = new ControllerLogradouroPessoa();
    logradouroPessoa = controller.inserir(logradouroPessoa);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoLogradouroPessoa.jsp";
    response.sendRedirect(url);

%>