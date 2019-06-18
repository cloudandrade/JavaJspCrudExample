

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
        
           <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'> 
      <link rel="stylesheet" href="./style.css">
      
    </head>
    <body>
     <a href="index.jsp"><button class="btn btn-warning">Voltar</button></a>
    <div class="initial-page">
       	<div class="form">
    
        <form action="executa_alterar.jsp" method="post">
           
           <h1>Editar Produto</h1>
           </br>
           
           <h4>Código:<br/></h4> 
            <input type="text" name="codigo" value="<%=request.getParameter("codigo")%>" /><br/>
            
            <h4>Descrição: </h4><br/>
            <input type="text" name="descricao" value="<%=request.getParameter("descricao")%>"/><br/>
            
            <h4>Preço: </h4><br/>
            <input type="text" name="preco" value="<%=request.getParameter("preco")%>" /><br/>
            
            <button type="submit" class="btn btn-warning"> Alterar </button>
            
            
        </form>
    </body>
</html>
