<%-- 
    Document   : verReceita
    Created on : 2 de ago. de 2024, 15:55:20
    Author     : Aluno
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.receitass.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RECEITAS</title>
    </head>
    <body>
        <h1>Visualizar Receita</h1>
        <%
        String idS = request.getParameter("id");
        if (!idS.isEmpty()) {
        int id = Integer.parseInt(idS);
        List<Receita> receitas = Receita.getReceita(id);
        
        
        for (Receita receita : receitas) { %>
        
        <div>Receita: <% out.print (receita.getNome()); %> <br><br></div>
        <div><% out.print (receita.getDescricao());%><br><br></div>
        <div>Porções: <% out.print (receita.getPorcoes()); %>
        - Tempo: <% out.print (receita.getTempo()); %> minutos <br><br></div>
        <div>Ingredientes: <% out.print (receita.getIngredientes()); %><br><br></div>
        <div>Modo de fazer: <br>
            <% out.print (receita.getPreparo()); %></div>
            
        
        <% }
        
            } else {
            out.print("Receita não encontrada");
            }
        
        %>
    </body>
</html>
