using LojaVirtual.BLL;
using LojaVirtual.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LojaVirtual.UI
{
    public partial class formTabelaCliente : System.Web.UI.Page
    {
        ClienteBLL clienteBLL = new ClienteBLL();
        ClienteDTO clienteDTO = new ClienteDTO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ExibirGridView()
        {

            string pesquisa = "l.nome like '%" + TextBoxPesq.Text + "%'";
            GridClientes.DataSource = clienteBLL.Pesquisar(pesquisa);
            GridClientes.DataBind();
        }

        protected void BtnNovo_Click(object sender, EventArgs e)
        {
            Response.Redirect("formCadCliente.aspx");
        }

        protected void BtnPesquisar_Click(object sender, EventArgs e)
        {
            ExibirGridView();
        }
        protected void GridClientes_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            clienteDTO.Id = Convert.ToInt32(GridClientes.DataKeys[e.RowIndex].Value.ToString());
            clienteBLL.Excluir(clienteDTO);
        }

        protected void GridClientes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridClientes.PageIndex = e.NewEditIndex;
            ExibirGridView();
        }

        protected void GridClientes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridClientes.EditIndex = -1;
            ExibirGridView();

        }

        protected void GridClientes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            clienteDTO.Id = Convert.ToInt32(GridClientes.DataKeys[e.RowIndex].Value.ToString());
            clienteDTO.Nome = e.NewValues[1].ToString();
            clienteDTO.Telefone = e.NewValues[2].ToString();
            clienteDTO.Cpf = e.NewValues[3].ToString();
            clienteDTO.Rua = e.NewValues[4].ToString();
            clienteDTO.Numero = e.NewValues[5].ToString();
            clienteDTO.Bairro = e.NewValues[6].ToString();
            clienteDTO.Cidade = e.NewValues[7].ToString();
            clienteDTO.Cep = e.NewValues[8].ToString();
            clienteDTO.Email = e.NewValues[9].ToString();
            clienteDTO.Senha = e.NewValues[10].ToString();

            clienteBLL.Alterar(clienteDTO);
            GridClientes.EditIndex = -1;
            ExibirGridView();
        }
    }
}