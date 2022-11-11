<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Logradouro logradouro = new Logradouro(id);
    ControllerLogradouro controller = new ControllerLogradouro();
    logradouro = controller.excluir(logradouro);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarLogradouro.jsp?CEP=" + pbusca;
    response.sendRedirect(url);
%>