

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir</title>
        
        
       <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'> 
      <link rel="stylesheet" href="./style.css">
    </head>
    <body>
      <a href="index.jsp"><button class="btn btn-danger">Voltar</button></a>  
     <div class="initial-page">
       	<div class="form">
	        <form action="executa_excluir.jsp" method="post">
	           <h1>Deseja Excluir este Produto?</h1>
	            <label>Código: </label><br/>
	            <input type="text" name="codigo" value="<%=request.getParameter("codigo")%>" /><br/>
	            
	            <label>Descrição: </label><br/>
	            <input type="text" name="descricao" value="<%=request.getParameter("descricao")%>"/><br/>
	            
	            <button type="submit" class="btn btn-danger"> Excluir </button>
	            
	            
	        </form>
	    </div>
	  </div>
    </body>
</html>
