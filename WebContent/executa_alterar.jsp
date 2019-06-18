
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
                Produto prod = new Produto();
                ProdutoDAO prdao = new ProdutoDAO();
                if(request.getParameter("descricao").equals("") || request.getParameter("preco").equals("")){
                    response.sendRedirect("index.jsp");
                }else{
                    prod.setDescricao_produto(request.getParameter("descricao"));
                    prod.setPreco_produto(Double.parseDouble(request.getParameter("preco")));
                    prod.setCodigo_produto(Integer.parseInt(request.getParameter("codigo")));
                    prdao.alterar(prod);
                    response.sendRedirect("index.jsp");
                    
                }
                
            }catch(Exception erro){
                throw new RuntimeException("Erro 8 - erro de Alteração na página: " + erro);
                
            }
        
        
        %>
        
        
    </body>
</html>
