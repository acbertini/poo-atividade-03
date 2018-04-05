<%-- 
    Document   : tabela-price
    Created on : Apr 01, 2018, 09:34:48 PM
    Author     : JoaoPauloSoler
--%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atividade 3: Tabela PRICE</title>
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
            <h1>Tabela Price</h1>
            <br/>
            <form>
                <table>
                    <tr>
                        <td><p>Valor do empréstimo:</p></td>
                        <td><input type="number" name="emp"/></td>
                    </tr>
                    <tr>
                        <td><p>Quantidade de Parcelas:</p></td>
                        <td><input type="number" name="parc"/></td>
                    </tr>
                    <tr>
                        <td><p>Juros</p></td>
                        <td><input type="number" name="jur"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Calcular"/></td>
                    </tr>                
                </table>
            </form>
            <br/>
            <% try { %>
            <%  
                DecimalFormat df = new DecimalFormat ("####,##0.00");
                int qtdParc = Integer.parseInt(request.getParameter("parc"));
                Float vlEmp = Float.parseFloat(request.getParameter("emp"));
                Float vlJuro = (Float. parseFloat(request.getParameter("jur")));
                Float vlJur = (vlJuro/100);
                Double vlPa = vlEmp * (Math.pow(1+vlJur,qtdParc)*vlJur)/ (Math.pow(1+vlJur,qtdParc)-1);
                String vlPar = String.valueOf(vlPa);
                Float vlParc = Float.parseFloat(vlPar);
                Float Amort = vlParc - (vlEmp*vlJur);
                
            %>
            <br/>
           
            <table class="table table-sm">
                <thead class="thead-dark">
                    <tr><th>Parcelas</th><th>Saldo Devedor(R$)</th><th>Parcela(R$)</th><th>Juros(R$)</th><th>Amortizador(R$)</th></tr>
                </thead>
                    <% for(int i = 0; i <= qtdParc; i++){ %>
                        <% if (i == 0) { %>
                            <tr>
                                <td><%= i %> </td>
                                <td><%= df.format(vlEmp) %> </td>
                                <td> </td>
                                <td> </td>
                                <td> </td>
                            </tr>
                        <% } else { %>
                            <tr>
                                <td><%= i    %> </td>
                                <td><%= df.format(vlEmp) %> </td>
                                <td><%= df.format(vlParc) %> </td>
                                <td><%= df.format((vlEmp + Amort)* vlJur) %> </td>
                                <td><%= df.format(Amort) %></td>
                            </tr>
                         <% } %>
                            <% Amort = vlParc - (vlEmp * vlJur); %>
                            <% vlEmp = vlEmp - Amort; %>
                               
                    <% } %>
                    
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
