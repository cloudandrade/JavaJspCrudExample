<%-- 
    Document   : executa_excluir
    Created on : 14/06/2019, 14:30:03
    Author     : Jan Cloud
--%>

<%@page import="dao.ProdutoDAO"%>
<%@page import="model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        
         <%
            try{
                
                ProdutoDAO prdao = new ProdutoDAO();
                prdao.excluir(Integer.parseInt(request.getParameter("codigo")));
                response.sendRedirect("index.jsp");
                
                
            }catch(Exception erro){
                throw new RuntimeException("Erro 9 - erro de Exclusão na página: " + erro);
                
            }
        
        
        %>
        
    </body>
</html>
