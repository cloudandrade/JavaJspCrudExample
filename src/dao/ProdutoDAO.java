 
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Produto;

public class ProdutoDAO {

    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList <Produto> lista = new ArrayList<>();
    
    public ProdutoDAO() {
        conn = new ConnectionFactory().getConexaoMySQL();
        
    }
    
    //------------Método de inserção de produto no banco de dados---CREATE
    public void inserir(Produto produto){
        String sql="INSERT INTO produto (descricao_produto, preco_produto) VALUES (?,?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getDescricao_produto());
            stmt.setDouble(2, produto.getPreco_produto());
            stmt.execute();
            stmt.close();
   
        } catch (Exception erro) {
            throw new RuntimeException("Erro de InserÃ§Ã£o - Erro 2: " + erro);
        }
        
        
    }
    
    //-------------Método de alteração de produto------UPDATE
    
    public void alterar(Produto produto){
        String sql="UPDATE produto SET descricao_produto = ?, preco_produto = ? WHERE codigo_produto = ?";
        try {
            
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getDescricao_produto());
            stmt.setDouble(2, produto.getPreco_produto());
            stmt.setInt(3, produto.getCodigo_produto());
            stmt.execute();
            stmt.close();
            
        } catch (Exception erro) {
            throw new RuntimeException("Erro de AlteraÃ§Ã£o - Erro 3: " + erro);
        }
        
        
    }
   
    //-----------Método de exclusão ----------------------DELETE
    
    public void excluir(int valor){
        String sql="DELETE FROM produto WHERE codigo_produto = " + valor;
        
        try {
            st = conn.createStatement();
            st.execute(sql);
            st.close();
            
            
        } catch (Exception erro) {
            throw new RuntimeException("Erro de ExclusÃ£o - Erro 4: " + erro);
        }
        
        
    }
    
    //-----------Método de listar ---VIEW
    
    public ArrayList<Produto> listarTodos(){
        String sql = "SELECT * FROM produto";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
             Produto produto = new Produto();
             produto.setCodigo_produto(rs.getInt("codigo_produto"));
             produto.setDescricao_produto(rs.getString("descricao_produto"));
             produto.setPreco_produto(rs.getDouble("preco_produto"));
                //os nomes dentro das aspas devem ser exatamente iguais aos nomes das colunas no banco
             lista.add(produto);
            }
            
            
        } catch (Exception erro) {
            throw new RuntimeException("Erro de Listagem de produtos - Erro 5: " + erro);
        }
        return lista;
    }
    
    //-----------------Buscar por descrição do produto----VIEW
    
    public ArrayList<Produto> listarTodosDescricao(String valor){
        String sql = "SELECT * FROM produto WHERE descricao_produto LIKE '%" + valor +"%'";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
             Produto produto = new Produto();
             produto.setCodigo_produto(rs.getInt("codigo_produto"));
             produto.setDescricao_produto(rs.getString("descricao_produto"));
             produto.setPreco_produto(rs.getDouble("preco_produto"));
                //os nomes dentro das aspas devem ser exatamente iguais aos nomes das colunas no banco
             lista.add(produto);
            }
            
            
        } catch (Exception erro) {
            throw new RuntimeException("Erro de Listagem de produtos - Erro 5: " + erro);
        }
        return lista;
    }
    
    
}
