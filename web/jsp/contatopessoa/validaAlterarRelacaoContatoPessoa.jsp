<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Contato"%>
<%@page import="backenddmn20222.controllers.ControllerContato"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>
<%@page import="backenddmn20222.models.beans.ContatoPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerContatoPessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idContato = Integer.parseInt(request.getParameter("ID_CONTATO"));
    int idPessoa = Integer.parseInt(request.getParameter("ID_PESSOA"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    ContatoPessoa contatoPessoa = new ContatoPessoa(id,idPessoa,idContato,obs);
    ControllerContatoPessoa controller = new ControllerContatoPessoa();
    contatoPessoa = controller.alterar(contatoPessoa);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoContatoPessoa.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>    
    
    