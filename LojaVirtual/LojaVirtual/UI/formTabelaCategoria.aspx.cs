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
    public partial class formTableCategoria : System.Web.UI.Page
    {
        CategoriaBLL categoriaBLL = new CategoriaBLL();
        CategoriaDTO categoriaDTO = new CategoriaDTO();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ExibirGridView()
        {

            string pesquisa = "c.nome like '%" + TextBoxPesq.Text + "%'";
            GridCategorias.DataSource = categoriaBLL.Pesquisar(pesquisa);
            GridCategorias.DataBind();
        }
        protected void BtnNovo_Click(object sender, EventArgs e)
        {
            Response.Redirect("formCadCategoria.aspx");
        }

        protected void BtnPesquisar_Click(object sender, EventArgs e)
        {
            ExibirGridView();
        }
        protected void GridCategorias_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            categoriaDTO.Id = Convert.ToInt32(GridCategorias.DataKeys[e.RowIndex].Value.ToString());
            categoriaBLL.Excluir(categoriaDTO);
        }

        protected void GridCategorias_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridCategorias.PageIndex = e.NewEditIndex;
            ExibirGridView();
        }

        protected void GridCategorias_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridCategorias.EditIndex = -1;
            ExibirGridView();

        }

        protected void GridCategorias_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            categoriaDTO.Id = Convert.ToInt32(GridCategorias.DataKeys[e.RowIndex].Value.ToString());
            categoriaDTO.Nome = e.NewValues[1].ToString();
            categoriaDTO.Descricao = e.NewValues[2].ToString();

            categoriaBLL.Alterar(categoriaDTO);
            GridCategorias.EditIndex = -1;
            ExibirGridView();
        }
    }
}