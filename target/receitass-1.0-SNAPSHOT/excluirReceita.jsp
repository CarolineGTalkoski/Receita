<%-- 
    Document   : excluirReceita
    Created on : 7 de ago. de 2024, 15:58:36
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
        <%
            
            int id = Integer.parseInt(request.getParameter("id"));
            Receita receitas = new Receita();
            
                     
            receitas.setId(id);
             
             boolean sucesso = receitas.deletar();

                if (sucesso) {
                out.println("Receita deletada com sucesso!");
                } else {
                
                
                out.println("Erro ao deletar receita.");
                }
                 
            %>
    </body>
</html>