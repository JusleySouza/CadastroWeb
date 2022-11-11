<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Contato"%>
<%@page import="backenddmn20222.controllers.ControllerContato"%>

<%
    String telefone = request.getParameter("TELEFONE");
    String mail = request.getParameter("EMAIL");
 
    Contato contato = new Contato(telefone,mail);
    ControllerContato controller = new ControllerContato();
    contato = controller.inserir(contato);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirContato.jsp";
    response.sendRedirect(url);
%>

