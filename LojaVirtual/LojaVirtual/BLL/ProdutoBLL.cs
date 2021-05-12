using LojaVirtual.DAL;
using LojaVirtual.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LojaVirtual.BLL
{
    public class ProdutoBLL
    {
        private MySqlDAL con = new MySqlDAL();

        // CRUD da Classe

        public void Inserir(ProdutoDTO produto)
        {
            string sql = string.Format($@"INSERT INTO produto VALUES (NULL, 
                                                '{produto.Nome}', 
                                                '{produto.Descricao}', 
                                                '{produto.Valor}', 
                                                '{produto.FornecedorID}', 
                                                '{produto.CategoriaID}', 
                                                '{produto.Foto}',
                                                '{produto.QuantidadeEstoque}');");
            con.ExecutarSQL(sql);
        }
        public void Excluir(ProdutoDTO produto)
        {
            string sql = string.Format($@"DELETE FROM produto WHERE id= {produto.Id};");
            con.ExecutarSQL(sql);
        }
        public void Alterar(ProdutoDTO produto)
        {
            string sql = string.Format($@"UPDATE produto SET nome= '{produto.Nome}',
                                                             descricao= '{produto.Descricao}',
                                                             valor='{produto.Valor}',
                                                             fornecedorID='{produto.FornecedorID}',
                                                             categoriaID='{produto.CategoriaID}',
                                                             foto = '{produto.Foto}',
                                                             quantidadeEstoque='{produto.QuantidadeEstoque}';");
            con.ExecutarSQL(sql);
        }

        public DataTable ConsultarID(int Id)
        {
            string sql = string.Format($@"SELECT * FROM produto WHERE id= {Id};");
            return con.ExecutarConsulta(sql);
        }
        public DataTable Pesquisar(string condicao)
        {

            string sql = string.Format($@"SELECT p.id , p.nome, p.descricao, p.valor, p.quantidadeEstoque, c.nome as categoria, f.nome as fornecedor, p.foto FROM produto p, categoria c, fornecedor f WHERE p.categoriaID = c.id and p.fornecedorID = f.id and " + condicao + " order by Id;");

            return con.ExecutarConsulta(sql);
        }

    }
}