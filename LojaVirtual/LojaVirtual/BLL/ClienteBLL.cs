using LojaVirtual.DAL;
using LojaVirtual.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LojaVirtual.BLL
{
    public class ClienteBLL
    {
        private MySqlDAL con = new MySqlDAL();

        public void Inserir(ClienteDTO cliente)
        {
            string sql = string.Format($@"INSERT INTO cliente VALUES (NULL, 
                                                '{cliente.Nome}',
                                                '{cliente.Telefone}'
                                                '{cliente.Cpf}',
                                                '{cliente.Numero}',
                                                '{cliente.Bairro}',
                                                '{cliente.Cidade}',
                                                '{cliente.Cep}',
                                                '{cliente.Email}', 
                                                '{cliente.Senha}';");
            con.ExecutarSQL(sql);
        }
        public void Excluir(ClienteDTO cliente)
        {
            string sql = string.Format($@"DELETE FROM cliente WHERE id= {cliente.Id};");
            con.ExecutarSQL(sql);
        }
        public void Alterar(ClienteDTO cliente)
        {
            string sql = string.Format($@"UPDATE cliente SET nome= '{cliente.Nome}',
                                                             telefone= '{cliente.Telefone}'
                                                             cpf='{cliente.Cpf}',
                                                             rua= '{cliente.Rua}', 
                                                             numero= '{cliente.Numero}',
                                                             bairro= '{cliente.Bairro}',
                                                             cidade= '{cliente.Cidade}',
                                                             cep= '{cliente.Cep}'
                                                             email='{cliente.Email}',
                                                             senha='{cliente.Senha}';");
            con.ExecutarSQL(sql);
        }

        public DataTable ConsultarID(int Id)
        {
            string sql = string.Format($@"SELECT * FROM cliente WHERE id= {Id};");
            return con.ExecutarConsulta(sql);
        }
        public DataTable Pesquisar(string condicao)
        {

            string sql = string.Format($@"SELECT l.id , l.nome, l.telefone, l.cpf, l.rua, l.numero, l.bairro, l.cidade, l.cep, l.email, l.senha FROM cliente l and " + condicao + " order by Id;");

            return con.ExecutarConsulta(sql);
        }

        public Boolean Autenticar(string email, string senha)
        {
            string sql = string.Format($@"SELECT * FROM cliente WHERE email= '{email}' and senha='{senha}';");
            DataTable dt = con.ExecutarConsulta(sql);
            if (dt.Rows.Count == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public string RecuperarSenha(string email)
        {
            string sql = string.Format($@"SELECT * FROM cliente WHERE email= '{email}';");
            DataTable dt = con.ExecutarConsulta(sql);
            if (dt.Rows.Count == 1)
            {
                return dt.Rows[0]["senha"].ToString();
            }
            else
            {
                return "Usuário não encontrado!";
            }
        }

        public Boolean Perfil(string email)
        {
            string sql = string.Format($@"SELECT * FROM cliente WHERE email= '{email}';");
            DataTable dt = con.ExecutarConsulta(sql);
            if (dt.Rows.Count == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}