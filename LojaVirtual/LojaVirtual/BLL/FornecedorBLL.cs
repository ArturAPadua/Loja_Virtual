using LojaVirtual.DAL;
using LojaVirtual.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LojaVirtual.BLL
{
    public class FornecedorBLL
    {
        private MySqlDAL con = new MySqlDAL();

        public void Inserir(FornecedorDTO fornecedor)
        {
            string sql = string.Format($@"INSERT INTO fornecedor VALUES (NULL, 
                                                '{fornecedor.Nome}', 
                                                '{fornecedor.Cnpj}', 
                                                '{fornecedor.Email}', 
                                                '{fornecedor.Telefone}', 
                                                '{fornecedor.NomeRepresentante}', 
                                                '{fornecedor.TelefoneRepresentante}';");
            con.ExecutarSQL(sql);
        }
        public void Excluir(FornecedorDTO fornecedor)
        {
            string sql = string.Format($@"DELETE FROM fornecedor WHERE id= {fornecedor.Id};");
            con.ExecutarSQL(sql);
        }
        public void Alterar(FornecedorDTO fornecedor)
        {
            string sql = string.Format($@"UPDATE fornecedor SET nome= '{fornecedor.Nome}', 
                                                             cnpj= '{fornecedor.Cnpj}', 
                                                             email= '{fornecedor.Email}', 
                                                             telefone= '{fornecedor.Telefone}', 
                                                             nomeRepresentante='{fornecedor.NomeRepresentante}', 
                                                             telefoneRepresentante='{fornecedor.TelefoneRepresentante}';");
            con.ExecutarSQL(sql);
        }

        public DataTable ConsultarID(int Id)
        {
            string sql = string.Format($@"SELECT * FROM fornecedor WHERE id= {Id};");
            return con.ExecutarConsulta(sql);
        }
        public DataTable Pesquisar(string condicao)
        {

            string sql = string.Format($@"SELECT f.id , f.nome, f.cnpj, f.email, f.telefone, f.nomeRepresentante, f.telefoneRepresentante FROM fornecedor f and " + condicao + " order by Id;");

            return con.ExecutarConsulta(sql);
        }
    }
}