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
            <h1>Equipe ABJN</h1>
            <h2> Integrantes</h2>
            <p> A equipe ABJN é formada pelos seguintes integrantes:</p>
            <table class="table table-sm">
                <thead class="thead-dark">
                    <tr><th>Nome</th><th>Contato</th></tr>
                </thead>
                <tr><th>Ana Carolina Bertini</th><th><a href="mailto:acbertini@gmail.com" title="">acbertini@gmail.com</a></th></tr>
                <tr><th>Brener Badures</th><th><a href="mailto:brener_bg@hotmail.com" title="">brener_bg@hotmail.com</a></th></tr>
                <tr><th>João Paulo Soler</th><th><a href="mailto:jpasoler@gmail.com" title="">jpasoler@gmail.com</a></th></tr>
                <tr><th>Nilson José de Lima</th><th><a href="mailto:nilsonli@gmail.com" title="">nilsonli@gmail.com</a></th></tr>
            </table>
            <p> Todos alunos do 4º Ciclo do curso de ADS - Análise e Desenvolvimento de Sistemas, da FATEC-PG</p>
            <h2> Sobre a Aplicação</h2>
            <p> Esta aplicação tem como objetivo apresentar de forma clara e objetiva ao usuário, <br>
                os resultados dos  cálculos  das parcelas, bem  como valor total e  amortização, sobre <br>
                o valor  de um  dado  empréstimo, aplicado pelas  técnicas  de  Amortização Americana,<br>
                Amortização  Constante  e  Amortização  pela  Tabela  Price, onde  o  usuário  poderá <br>
                comparar as tabelas apresentadas</p>
        </main>

        <!-- Rodapé -->
        <%@include file="WEB-INF/jspf/footer.jspf" %>    
    </body>
</html>
