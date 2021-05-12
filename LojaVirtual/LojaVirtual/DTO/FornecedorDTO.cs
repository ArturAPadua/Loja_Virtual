using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LojaVirtual.DTO
{
    public class FornecedorDTO
    {
        private int id;
        private string nome, cnpj, email, telefone, nomeRepresentante, telefoneRepresentante;

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

        public string Cnpj
        {
            set
            {
                if (value != string.Empty)
                {
                    this.cnpj = value;
                }
                else
                {

                    throw new Exception("Campo cnpj é obrigatório!");
                }

            }
            get { return this.cnpj; }

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

        public string NomeRepresentante
        {
            set
            {
                if (value != string.Empty)
                {
                    this.nomeRepresentante = value;
                }
                else
                {

                    throw new Exception("Campo nome do(a) representante é obrigatório!");
                }

            }
            get { return this.nomeRepresentante; }

        }

        public string TelefoneRepresentante
        {
            set
            {
                if (value != string.Empty)
                {
                    this.telefoneRepresentante = value;
                }
                else
                {

                    throw new Exception("Campo telefone do(a) representante é obrigatório!");
                }

            }
            get { return this.telefoneRepresentante; }

        }


    }
}