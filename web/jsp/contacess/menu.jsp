<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerUsuario"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario usuEntrada = new Usuario(login,senha);
    ControllerUsuario usucont = new ControllerUsuario();
    Usuario usuSaida = usucont.validaWeb(usuEntrada);
    session.setAttribute("UsuarioLogado",usuSaida);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <body>
        <% if (usuSaida != null) { %>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Usuário</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Pessoa</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Manter Acesso</a> 
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown4'>Manter Contato</a> 
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown5'>Manter Contato_Pessoa</a>
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown6'>Manter Logradouro</a>
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown7'>Manter Logradouro_Pessoa</a>

            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/inserirUsuario.jsp"> InseriUsuario </a></li>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuarioParametro </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuarioParametro </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown2 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/inserirPessoa.jsp"> InseriPessoa </a></li>
                    <li><a href="../pessoa/consultarPessoa.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/consultarPessoa.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usuariopessoa/inserirRelacaoUsuarioPessoa.jsp"> InseriUsuarioPessoa </a></li>
                    <li><a href="../usuariopessoa/consultarRelacaoUsuarioPessoa.jsp"> ConsultaUsuarioPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usuariopessoa/consultarRelacaoUsuarioPessoa.jsp"> ConsultaUsuarioPessoa </a></li>
                </ul>
            <% } %>
             <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown4 Structure -->
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../contato/inserirContato.jsp"> InseriContato </a></li>
                    <li><a href="../contato/consultarContato.jsp"> ConsultaContato </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../contato/consultarContato.jsp"> ConsultaContato </a></li>
                </ul>
            <% } %>
             <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown5 Structure -->
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../contatopessoa/inserirRelacaoContatoPessoa.jsp"> InseriContatoPessoa </a></li>
                    <li><a href="../contatopessoa/consultarRelacaoContatoPessoa.jsp"> ConsultaContatoPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../contatopessoa/consultarRelacaoContatoPessoa.jsp"> ConsultaContatoPessoa </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown6 Structure -->
                <ul id='dropdown6' class='dropdown-content'>
                    <li><a href="../logradouro/inserirLogradouro.jsp"> InseriLogradouro </a></li>
                    <li><a href="../logradouro/consultarLogradouro.jsp"> ConsultaLogradouro </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown6' class='dropdown-content'>
                    <li><a href="../logradouro/consultarLogradouro.jsp"> ConsultaLogradouro </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown7 Structure -->
                <ul id='dropdown7' class='dropdown-content'>
                    <li><a href="../logradouropessoa/inserirRelacaoLogradouroPessoa.jsp"> InseriLogradouroPessoa </a></li>
                    <li><a href="../logradouropessoa/consultarRelacaoLogradouroPessoa.jsp"> ConsultaLogradouroPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown7' class='dropdown-content'>
                    <li><a href="../logradouropessoa/consultarRelacaoLogradouroPessoa.jsp"> ConsultaLogradouroPessoa </a></li>
                </ul>
            <% } %>
            <% } else { %>
                <h1>USUÁRIO INVÁLIDO</h1>
        <% } %>
    </body>
</html>