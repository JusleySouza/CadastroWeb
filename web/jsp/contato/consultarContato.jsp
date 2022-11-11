<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - CONTATO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR CONTATO</h1>
       <form name="consultarContato" action="validaConsultarContato.jsp" method="post">
           EMAIL <input type="text" name ="EMAIL" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
