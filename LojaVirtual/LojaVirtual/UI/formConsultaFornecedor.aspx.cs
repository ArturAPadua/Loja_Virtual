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
    public partial class formConsultaFornecedor : System.Web.UI.Page
    {
        FornecedorBLL fornecedorBLL = new FornecedorBLL();
        FornecedorDTO fornecedorDTO = new FornecedorDTO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ExibirGridView()
        {

            string pesquisa = "f.nome like '%" + TextBoxPesq.Text + "%'";
            GridFornecedores.DataSource = fornecedorBLL.Pesquisar(pesquisa);
            GridFornecedores.DataBind();
        }

        protected void BtnPesquisar_Click(object sender, EventArgs e)
        {
            ExibirGridView();
        }
        protected void GridFornecedores_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            fornecedorDTO.Id = Convert.ToInt32(GridFornecedores.DataKeys[e.RowIndex].Value.ToString());
            fornecedorBLL.Excluir(fornecedorDTO);
        }

        protected void GridFornecedores_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridFornecedores.PageIndex = e.NewEditIndex;
            ExibirGridView();
        }

        protected void GridFornecedores_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridFornecedores.EditIndex = -1;
            ExibirGridView();

        }

        protected void GridFornecedores_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            fornecedorDTO.Id = Convert.ToInt32(GridFornecedores.DataKeys[e.RowIndex].Value.ToString());
            fornecedorDTO.Nome = e.NewValues[1].ToString();
            fornecedorDTO.Cnpj = e.NewValues[2].ToString();
            fornecedorDTO.Email = e.NewValues[3].ToString();
            fornecedorDTO.Telefone = e.NewValues[4].ToString();
            fornecedorDTO.NomeRepresentante = e.NewValues[5].ToString();
            fornecedorDTO.TelefoneRepresentante = e.NewValues[6].ToString();

            fornecedorBLL.Alterar(fornecedorDTO);
            GridFornecedores.EditIndex = -1;
            ExibirGridView();
        }
    }
}