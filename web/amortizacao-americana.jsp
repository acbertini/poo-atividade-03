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
            <h1 class="mt-5">Amortizacao americana</h1>
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
            <% try { %>
            <%  int qtdeParc = Integer.parseInt(request.getParameter("qtdeParcelas"));
                Float valorTotal = Float.parseFloat(request.getParameter("valorTotal"));
                Float taxaJuros = Float.parseFloat(request.getParameter("juros"));
                Float jurosMensal = valorTotal * (taxaJuros / 100);
                Float jurosTotal = 0f;
                int mes = 0;
            %>
            <table class="table table-sm">
                <thead class="thead-dark">
                    <tr><th>Mês</th><th>Saldo devedor</th><th>Amortização</th><th>Juros</th><th>Prestação</th></tr>
                </thead>
                <tbody>
                    <% do { %>
                    <% if (mes == 0) {%>
                    <tr><th scope="row"><%= mes%></th>
                        <td><%= valorTotal%></td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td></tr>
                        <% } else if (mes < qtdeParc) {%>
                    <tr><th scope="row"><%= mes%></th>
                        <td><%= valorTotal%></td>
                        <td>-</td>
                        <td><%= jurosMensal%></td>
                        <td> <%= jurosMensal%> </td></tr>
                        <%}
                                mes++;
                                jurosTotal += jurosMensal;
                            } while (mes < qtdeParc);
                            jurosTotal += jurosMensal;%>
                    <tr><th scope="row"><%= mes%></th>
                        <td>-</td>
                        <td><%= valorTotal%></td>
                        <td><%= jurosMensal%></td>
                        <td><%= valorTotal + jurosMensal%></td></tr>
                </tbody> 
                <tfoot>
                    <tr><th scope="row">TOTAL</th>
                        <td></td>
                        <td><%= valorTotal%></td>
                        <td><%= jurosTotal%></td>
                        <td><%= valorTotal + jurosTotal%></td></tr>
                </tfoot>
            </table>
            <% } catch (Exception e) {
                    if (request.getParameter("valor") != null) {
                        out.println(e);
                    }
                }%>    
        </main>

        <!-- Rodapé -->
        <%@include file="WEB-INF/jspf/footer.jspf" %>

    </body>
</html>
