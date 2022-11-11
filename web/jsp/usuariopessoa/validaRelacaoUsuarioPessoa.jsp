<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerUsuario"%>
<%@page import="backenddmn20222.models.beans.PessoaFisica"%>
<%@page import="backenddmn20222.controllers.ControllerPessoaFisica"%>
<%@page import="backenddmn20222.models.beans.UsuarioPessoa"%>
<%@page import="backenddmn20222.controllers.ControllerUsuarioPessoa"%>

<%
    int idUsuario = Integer.parseInt(request.getParameter("ID_USUARIO"));
    int idPessoa = Integer.parseInt(request.getParameter("ID_PESSOA"));
    String obs = request.getParameter("OBS");
    UsuarioPessoa usuarioPessoa = new UsuarioPessoa(idUsuario,idPessoa,obs);
    ControllerUsuarioPessoa controller = new ControllerUsuarioPessoa();
    usuarioPessoa = controller.inserir(usuarioPessoa);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoUsuarioPessoa.jsp";
    response.sendRedirect(url);

%>