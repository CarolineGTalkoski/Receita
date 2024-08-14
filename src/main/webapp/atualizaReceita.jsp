<%-- 
    Document   : atualizaReceita
    Created on : 7 de ago. de 2024, 14:50:10
    Author     : Aluno
--%>

<%@page import="com.mycompany.receitass.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Atualizando Receita!</h1>
        
        <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            int id = Integer.parseInt(request.getParameter("id"));
            String nome = request.getParameter("nome");
            String descricao = request.getParameter("descricao");
            int tempo=Integer.parseInt(request.getParameter("tempo"));
            int porcoes=Integer.parseInt(request.getParameter("porcoes"));
            String ingredientes = request.getParameter("ingredientes");
            String preparo = request.getParameter("preparo");
            
            
            if (nome != null && descricao != null && ingredientes != null && preparo != null && !nome.isEmpty() && !descricao.isEmpty() && !ingredientes.isEmpty() && !preparo.isEmpty()) {
            Receita receitas = new Receita(nome, descricao, tempo, porcoes, ingredientes, preparo);
            receitas.setId(id);
             
             boolean sucesso = receitas.atualizar();

                if (sucesso) {
                out.println("Receita atualizada com sucesso!");
                } else {
                
                
                out.println("Erro ao atualizar receita.");
                }
            }     
            %>
    </body>
</html>