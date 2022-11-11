<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.LogradouroPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouroPessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    LogradouroPessoa logradouroPessoa = new LogradouroPessoa(id);
    ControllerLogradouroPessoa controller = new ControllerLogradouroPessoa();
    logradouroPessoa = controller.excluir(logradouroPessoa);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoLogradouroPessoa.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>

