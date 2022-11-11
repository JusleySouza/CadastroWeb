<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Contato"%>
<%@page import="backenddmn20222.controllers.ControllerContato"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Contato contato = new Contato(id);
    ControllerContato controller = new ControllerContato();
    contato = controller.excluir(contato);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarContato.jsp?EMAIL=" + pbusca;
    response.sendRedirect(url);
%>