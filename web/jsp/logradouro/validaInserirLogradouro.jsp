<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>

<%
    String endereco = request.getParameter("ENDERECO");
    String cep = request.getParameter("CEP");
    int numero = Integer.parseInt(request.getParameter("NUMERO"));
    String complemento = request.getParameter("COMPLEMENTO");
 
    Logradouro logradouro = new Logradouro(endereco,cep,numero,complemento);
    ControllerLogradouro controller = new ControllerLogradouro();
    logradouro = controller.inserir(logradouro);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirLogradouro.jsp";
    response.sendRedirect(url);
%>

