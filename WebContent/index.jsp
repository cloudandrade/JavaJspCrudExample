

<%@page import="model.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
       
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <title>CRUD</title>
        
    <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'> 
      <link rel="stylesheet" href="./style.css">
        
    </head>
    <body>
    <div class="initial-page">
    
    	<div class="form">
    	<h1>Produtos</h1>
    	 <br/>
		        <form action="index.jsp" method="post">
		            <label>Filtrar por Descrição:</label>
		            <input type="text" name="descricao" />
		            
		            <button type="submit" class="btn btn-success nbuttons">Buscar</button>
		            
		        </form>
		        
		        <%
		        //Criando Linhas e preenchendo colunas de acordo com a quantidade de registros.
		        
		        try{
		        out.print("<table class='table'>");
		            out.print("<tr>");    
		                 out.print("<th>Código</th><th>Descrição</th><th>Preço</th><th>Alterar</th><th>Excluir</th>");  
		                 out.print("</tr>");      
		                 ProdutoDAO prodao = new ProdutoDAO();
		                 if(request.getParameter("descricao") == "" || request.getParameter("descricao") == null){
		                	 //se o campo de descrição estiver vazio ele realiza a busca por todos os itens
		                     ArrayList<Produto> lista = prodao.listarTodos();
		                     for(int num = 0; num < lista.size(); num++){
		                         out.print("<tr>");
		                         out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
		                         out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
		                         out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
		                         
		                         //botão de editar
		                         out.print("<td>  <a href='alterar.jsp?codigo=" + lista.get(num).getCodigo_produto() + 
		 		                        "&descricao=" +lista.get(num).getDescricao_produto()+ "&preco=" + lista.get(num).getPreco_produto()
		                        		 + " '><button class='btn btn-warning tbuttons'><img class='img-align' src='Images/EditPencil.png' width='20' height='20' ></button></a></td>");

		                         
		                      
		                         
		                         //botão de excluir
		                        out.print("<td>  <a href='excluir.jsp?codigo=" + lista.get(num).getCodigo_produto() + 
		                        "&descricao=" +lista.get(num).getDescricao_produto()+
		                        "'><button class='btn btn-danger tbuttons'><img class='img-align' src='Images/Trash.png' width='20' height='20' ></button></a></td>");
		                         out.print("</tr>");
		  
		                     }
		                
		                 }else{
		                	 //se o campo de busca não estiver vazio ele realiza a busca por descrição
		                           ArrayList<Produto> lista = prodao.listarTodosDescricao(request.getParameter("descricao"));
		                     for(int num = 0; num < lista.size(); num++){
		                    	 out.print("<tr>");
		                         out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
		                         out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
		                         out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
		                         
		                         //botão de editar
		                         out.print("<td>  <a href='alterar.jsp?codigo =" + lista.get(num).getCodigo_produto() 
		                        		 + "&descricao=" +lista.get(num).getDescricao_produto()
		                        		 + "&preco=" + lista.get(num).getPreco_produto()
		                        		 + " '><button class='btn btn-warning'><img class='img-align' src='Images/EditPencil.png' width='20' height='20' ></button></a></td>");
		                         
		                         //botão de excluir
		                        out.print("<td>  <a href='excluir.jsp?codigo=" + lista.get(num).getCodigo_produto() + 
		                        "&descricao=" +lista.get(num).getDescricao_produto()+
		                        "'><button class='btn btn-danger'><img class='img-align' src='Images/Trash.png' width='20' height='20' ></button></a></td>");
		                         out.print("</tr>");
		  
		                     }
		                
		                 }
		                 
		        
		        out.print("</table>");    
		            
		        }catch(Exception erro){
		            throw new RuntimeException("Erro de listagem - erro 10: " + erro);
		        }
		        %>
		        
		        <br/>
		       
		       
		          <a href="inserir.jsp"><button class="btn btn-primary nbuttons">Novo Produto</button></a> 
		    </div>
		 
        </div>
	 
    </body>
    
    
</html>

