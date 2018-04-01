<%-- 
    Document   : home
    Created on : Mar 27, 2018, 8:23:53 AM
    Author     : AnaBertini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atividade 3: Home</title>
        <!-- Bootstrap 4-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- Fixa o rodapé -->
        <link href="scr/css/sticky-footer-navbar.css" rel="stylesheet">
    </head>
    <body>
        <!-- Barra de navegação -->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>

        <!-- Conteúdo da página-->
        <main role="main" class="container">
            <h1>Home</h1>
        </main>

        <!-- Rodapé -->
        <%@include file="WEB-INF/jspf/footer.jspf" %>    
    </body>
</html>
