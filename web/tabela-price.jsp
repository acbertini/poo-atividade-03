<%-- 
    Document   : tabela-price
    Created on : Apr 01, 2018, 09:34:48 PM
    Author     : JoaoPauloSoler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atividade 3: Tabela FIPE</title>
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
                int qtdParc = Integer.parseInt(request.getParameter("parc"));
                Float vlEmp = Float.parseFloat(request.getParameter("emp"));
                Float vlJur = (Float. parseFloat(request.getParameter("jur")));
                Double vlPa = vlEmp * ((vlJur/100) / (1 - Math.pow(1 + (vlJur/100), -qtdParc)));
                String vlPar = String.valueOf(vlPa);
                Float vlParc = Float.parseFloat(vlPar);
                Float Amort = vlParc - (vlEmp*(vlJur/100));
            %>
            <br/>
           
            <table class="table table-sm">
                <thead class="thead-dark">
                    <tr><th>Parcelas</th><th>Saldo Devedor</th><th>Parcela</th><th>Juros</th><th>Amortizador</th></tr>
                </thead>
                 <tbody>
                    <% for(int i = 1; i <= qtdParc; i++){ %>
                   
                    <tr>
                        <td><%= i %> </td>
                        <td><%= vlEmp %> </td>
                        <td><%= vlParc%> </td>
                        <td><%= vlEmp * (vlJur/100) %> </td>
                        <td><%= Amort %></td>
                    </tr>
                    
                    <% vlEmp = vlEmp - vlParc; %>
                    <% Amort = vlParc - (vlEmp*(vlJur/100)); %>
                    <% } %>
                    </tbody>
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
