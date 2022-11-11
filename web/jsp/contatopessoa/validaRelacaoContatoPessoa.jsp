<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Contato"%>
<%@page import="backenddmn20222.controllers.ControllerContato"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>
<%@page import="backenddmn20222.models.beans.ContatoPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerContatoPessoa"%>

<%
    int idContato = Integer.parseInt(request.getParameter("ID_CONTATO"));
    int idPessoa = Integer.parseInt(request.getParameter("ID_PESSOA"));
    String obs = request.getParameter("OBS");
    ContatoPessoa contatoPessoa = new ContatoPessoa(idPessoa,idContato,obs);
    ControllerContatoPessoa controller = new ControllerContatoPessoa();
    contatoPessoa = controller.inserir(contatoPessoa);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoContatoPessoa.jsp";
    response.sendRedirect(url);

%>