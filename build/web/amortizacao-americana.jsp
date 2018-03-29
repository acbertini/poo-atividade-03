<%-- 
    Document   : amortizacao-americana
    Created on : Mar 27, 2018, 8:24:35 AM
    Author     : AnaBertini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atividade 3: Amortizacao americana</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <h1>Amortizacao americana</h1>
        <br/>
        <form>
            <p>Valor total:</p>
            <input type="number" required="true" name="valorTotal"/><br/>
            <p>Quantidade parcelas:</p>
            <input type="number" required="true" name="qtdeParcelas"/><br/>
            <p>Juros (%):</p>
            <input type="number" required="true" name="juros"/><br/>
            <input type="submit" value="Calcular"/>
        </form>
        <br/>
        <%
            int qtdeParc = Integer.parseInt(request.getParameter("qtdeParcelas")); 
            Float valorTotal = Float.parseFloat(request.getParameter("valorTotal"));
            Float juros = Float.parseFloat(request.getParameter("juros"));
        %>
        <% try { %>
            <table class="table">
                <thead class="thead-dark">
                    <tr><th>Nro prestação</th><th>Amortização</th><th>Juros</th><th>Dívida</th></tr>
                </thead>
                <% for(int i=0; i<=qtdeParc; i++){ %>
                    <tbody>
                        <tr><th scope="row"><%= i %></th>
                        <td>1</td>
                        <td>1</td>
                        <td> <%= valorTotal %> </td></tr>
                    </tbody>
                <% } %>
            </table>
        <% } catch(Exception e) { %>
            <% if(request.getParameter("valor")!=null){ %>
                <%= e%>
            <%}%>
        <% }%>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
