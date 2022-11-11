<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - LOGRADOURO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR LOGRADOURO</h1>
        <form name="inserirLogradouro" action="validaInserirLogradouro.jsp" method="post">
            Endereco: <input type="text" name="ENDERECO" value=""> <br>
            Cep: <input type="text" name="CEP" value=""> <br>
            Numero: <input type="text" name="NUMERO" value=""> <br>
            Complemento: <input type="text" name="COMPLEMENTO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
