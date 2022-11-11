<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.ContatoPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerContatoPessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    ContatoPessoa contatoPessoa = new ContatoPessoa(id);
    ControllerContatoPessoa controller = new ControllerContatoPessoa();
    contatoPessoa = controller.excluir(contatoPessoa);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoContatoPessoa.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>

