<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - CONTATO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR CONTATO</h1>
        <form name="inserirContato" action="validaInserirContato.jsp" method="post">
            Telefone: <input type="text" name="TELEFONE" value=""> <br>
            Email: <input type="text" name="EMAIL" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
