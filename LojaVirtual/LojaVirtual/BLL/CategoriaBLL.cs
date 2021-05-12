using LojaVirtual.DAL;
using LojaVirtual.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LojaVirtual.BLL
{
    public class CategoriaBLL
    {
        private MySqlDAL con = new MySqlDAL();

        public void Inserir(CategoriaDTO categoria)
        {
            string sql = string.Format($@"INSERT INTO categoria VALUES (NULL, 
                                                '{categoria.Nome}', 
                                                '{categoria.Descricao}';");
            con.ExecutarSQL(sql);
        }
        public void Excluir(CategoriaDTO categoria)
        {
            string sql = string.Format($@"DELETE FROM categoria WHERE id= {categoria.Id};");
            con.ExecutarSQL(sql);
        }
        public void Alterar(CategoriaDTO categoria)
        {
            string sql = string.Format($@"UPDATE categoria SET nome= '{categoria.Nome}',
                                                             descricao= '{categoria.Descricao}';");
            con.ExecutarSQL(sql);
        }

        public DataTable ConsultarID(int Id)
        {
            string sql = string.Format($@"SELECT * FROM categoria WHERE id= {Id};");
            return con.ExecutarConsulta(sql);
        }
        public DataTable Pesquisar(string condicao)
        {

            string sql = string.Format($@"SELECT c.id , c.nome, c.descricao FROM categoria c and " + condicao + " order by Id;");

            return con.ExecutarConsulta(sql);
        }
    }
}