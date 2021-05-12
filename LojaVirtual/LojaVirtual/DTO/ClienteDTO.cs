using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LojaVirtual.DTO
{
    public class ClienteDTO
    {
        private int id;
        private string nome, telefone, cpf, rua, numero, bairro, cidade, cep, email, senha;

        public int Id { get => id; set => id = value; }

        public string Nome
        {
            set
            {
                if (value != string.Empty)
                {
                    this.nome = value;
                }
                else
                {

                    throw new Exception("Campo nome é obrigatório!");
                }

            }
            get { return this.nome; }

        }

        public string Telefone
        {
            set
            {
                if (value != string.Empty)
                {
                    this.telefone = value;
                }
                else
                {

                    throw new Exception("Campo telefone é obrigatório!");
                }

            }
            get { return this.telefone; }

        }
        public string Cpf
        {
            set
            {
                if (value != string.Empty)
                {
                    this.cpf = value;
                }
                else
                {

                    throw new Exception("Campo cpf é obrigatório!");
                }

            }
            get { return this.cpf; }

        }

        public string Rua
        {
            set
            {
                if (value != string.Empty)
                {
                    this.rua = value;
                }
                else
                {

                    throw new Exception("Campo rua é obrigatório!");
                }

            }
            get { return this.rua; }

        }

        public string Numero
        {
            set
            {
                if (value != string.Empty)
                {
                    this.numero = value;
                }
                else
                {

                    throw new Exception("Campo numero é obrigatório!");
                }

            }
            get { return this.numero; }

        }

        public string Bairro
        {
            set
            {
                if (value != string.Empty)
                {
                    this.bairro = value;
                }
                else
                {

                    throw new Exception("Campo bairro é obrigatório!");
                }

            }
            get { return this.bairro; }

        }

        public string Cidade
        {
            set
            {
                if (value != string.Empty)
                {
                    this.cidade = value;
                }
                else
                {

                    throw new Exception("Campo cidade é obrigatório!");
                }

            }
            get { return this.cidade; }

        }

        public string Cep
        {
            set
            {
                if (value != string.Empty)
                {
                    this.cep = value;
                }
                else
                {

                    throw new Exception("Campo cep é obrigatório!");
                }

            }
            get { return this.cep; }

        }

        public string Email
        {
            set
            {
                if (value != string.Empty)
                {
                    this.email = value;
                }
                else
                {

                    throw new Exception("Campo email é obrigatório!");
                }

            }
            get { return this.email; }

        }

        public string Senha
        {
            set
            {
                if (value != string.Empty)
                {
                    this.senha = value;
                }
                else
                {

                    throw new Exception("Campo senha é obrigatório!");
                }

            }
            get { return this.senha; }

        }
    }
}