using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LojaVirtual.DTO
{
    public class CategoriaDTO
    {
        private int id;
        private string nome, descricao;

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

        public string Descricao
        {
            set
            {
                if (value != string.Empty)
                {
                    this.descricao = value;
                }
                else
                {

                    throw new Exception("Campo descrição é obrigatório!");
                }

            }
            get { return this.descricao; }

        }
    }
}