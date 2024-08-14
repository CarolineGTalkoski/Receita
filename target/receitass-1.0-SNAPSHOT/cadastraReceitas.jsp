<%-- 
    Document   : cadastraReceitas.jsp
    Created on : 31 de jul. de 2024, 16:19:29
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Receitas!</h1>
        
        <form action="salvaReceitas.jsp" method="post">
            
        <label for="nome" class="form-label">
            Nome da Receita:</label>
        <input type="text" id="nome" name="nome" 
               class="form-control"required><br><br>

        
        <label for="descricao" class="form-label">
            Descrição da Receita:</label>
        <input type="text" id="descricao" name="descricao" 
               class="form-control" required><br><br>
        
        
        <label for="tempo" class="form-label">
            Tempo de preparo:</label>
        <input type="number" id="tempo" name="tempo" 
               class="form-control"required> min<br><br>

        
        <label for="porcoes" class="form-label">
            Porções:</label>
        <input type="number" id="porcoes" name="porcoes" 
               class="form-control" required><br><br>
        
        
        <label for="ingredientes" class="form-label">
            Ingredientes:</label>
        <input type="text" id="ingredientes" name="ingredientes" 
               class="form-control"required><br><br>

        
        <label for="preparo" class="form-label">
            Modo de preparo:</label>
        <input type="text" id="preparo" name="preparo" 
               class="form-control" required><br><br>
        
        
        <input type="submit" value="Enviar">
        
    </body>
</html>
