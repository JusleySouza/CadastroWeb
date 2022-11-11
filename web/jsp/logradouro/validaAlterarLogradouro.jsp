<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String endereco = request.getParameter("ENDERECO");
    String cep = request.getParameter("CEP");
    int numero = Integer.parseInt(request.getParameter("NUMERO"));
    String complemento = request.getParameter("COMPLEMENTO");
    String pbusca = request.getParameter("PBUSCA");
    Logradouro logradouro = new Logradouro(id,endereco,cep,numero,complemento);
    ControllerLogradouro controller = new ControllerLogradouro();
    logradouro = controller.alterar(logradouro);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarLogradouro.jsp?CEP=" + pbusca;
    response.sendRedirect(url);
%>