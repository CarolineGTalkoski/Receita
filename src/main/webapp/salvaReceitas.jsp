<%-- 
    Document   : salvaReceitas
    Created on : 31 de jul. de 2024, 16:22:00
    Author     : Aluno
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.receitass.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
        
            String nome = request.getParameter("nome");
            String descricao = request.getParameter("descricao");
            int tempo=Integer.parseInt(request.getParameter("tempo"));
            int porcoes=Integer.parseInt(request.getParameter("porcoes"));
            String ingredientes = request.getParameter("ingredientes");
            String preparo = request.getParameter("preparo");
            
            if (nome != null && descricao != null && ingredientes != null && preparo != null && !nome.isEmpty() && !descricao.isEmpty() && !ingredientes.isEmpty() && !preparo.isEmpty()) {
            Receita receitas = new Receita(nome, descricao, tempo, porcoes, ingredientes, preparo);
           
            
             boolean sucesso = receitas.salvar();

                if (sucesso) {
                out.println("Receita salva com sucesso!");
                } else {
                out.println("Erro ao salvar receita.");
                }
            }     
            %>
    </body>
</html>
