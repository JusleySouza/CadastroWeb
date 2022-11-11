<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Contato"%>
<%@page import="backenddmn20222.controllers.ControllerContato"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String telefone = request.getParameter("TELEFONE");
    String mail = request.getParameter("EMAIL");
    String pbusca = request.getParameter("PBUSCA");
    Contato contato = new Contato(id,telefone,mail);
    ControllerContato controller = new ControllerContato();
    contato = controller.alterar(contato);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarContato.jsp?EMAIL=" + pbusca;
    response.sendRedirect(url);
%>