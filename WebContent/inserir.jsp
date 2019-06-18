

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Incluir</title>
        
          <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'> 
      <link rel="stylesheet" href="./style.css">
    </head>
    <body>
   <a href="index.jsp"><button class="btn btn-primary">Voltar</button></a>
       <div class="initial-page">
       	<div class="form">
        <form action="executa_inserir.jsp" method="post">
            <!--
            <label>Código: </label><br/>
            <input type="text" name="codigo" /><br/>
            
            
            -->
            <h1> Cadastrar Produto</h1>
            <br/>
            <label>Descrição: </label><br/>
            <input type="text" name="descricao" placeholder="Nome do Produto e Características"/><br/>
          
            
            <label>Preço: </label><br/>
            <input type="text" name="preco" placeholder="Valor do Produto (Utilizar ponto ao invés de vírgula)" /><br/>
            
             
            
            
            <button type="submit" class="btn btn-primary"> Cadastrar </button>
            
            
        </form>
        </div>
          
        </div>
   
         
    </body>
</html>
