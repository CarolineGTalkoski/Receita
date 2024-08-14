<%-- 
    Document   : editarReceita
    Created on : 2 de ago. de 2024, 16:36:52
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
        <h1>Editando Receita</h1>
        
        <form action="atualizaReceita.jsp" method="post">
            
            <input type="hidden" id="id" name="id" value="1"><br><br>
            Nome da Receita: <input type="text" id="nome" name="nome" required value="Bolo de chocolate"<br><br><br>
            Descrição da Receita: <input type="text" id="descricao" name="descricao" required value="Receita"><br><br>
            Tempo de preparo (minutos): <input type="number" id="tempo" name="tempo" required value="120"><br><br>
            Porções:<input type="number" id="porcoes" name="porcoes" required value="8"><br><br>
            Ingredientes:<input type="text" id="ingredientes" name="ingredientes" required
                                value="Ovos, farinha, açucar, leite, fermento"><br><br>
            Modo de preparo:<input type="text" id="preparo" name="preparo" required value="Misturar todos os ingredientes e levar ao fogo para assar."><br><br>
            
            <input type="submit" value="Salvar Receita">
        </form>
        
    </body>
</html>
