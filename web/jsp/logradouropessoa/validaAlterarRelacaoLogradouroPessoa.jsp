<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>
<%@page import="backenddmn20222.models.beans.LogradouroPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouroPessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idLogradouro = Integer.parseInt(request.getParameter("ID_LOGRADOURO"));
    int idPessoa = Integer.parseInt(request.getParameter("ID_PESSOA"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    LogradouroPessoa logradouroPessoa = new LogradouroPessoa(id,idLogradouro,idPessoa,obs);
    ControllerLogradouroPessoa controller = new ControllerLogradouroPessoa();
    logradouroPessoa = controller.alterar(logradouroPessoa);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoLogradouroPessoa.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>    
    
    