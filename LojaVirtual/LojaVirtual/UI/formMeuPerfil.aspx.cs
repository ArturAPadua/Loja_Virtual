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
    public partial class formMeuPerfil : System.Web.UI.Page
    {
        ClienteDTO clienteDTO = new ClienteDTO();
        ClienteBLL clienteBLL = new ClienteBLL();

        ProdutoBLL produtoBLL = new ProdutoBLL();
        ProdutoDTO produtoDTO = new ProdutoDTO();

        FornecedorBLL fornecedorBLL = new FornecedorBLL();
        FornecedorDTO fornecedorDTO = new FornecedorDTO();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ClienteDTO clienteDTO = new ClienteDTO();
                txtEmailPerfil.Text = clienteDTO.Email;

                ClienteBLL clienteBLL = new ClienteBLL();
                if (clienteBLL.Perfil(clienteDTO.Email))
                {
                    Session["emailUsuario"] = clienteDTO.Email;
                    msgOK.Visible = true;
                }
            }
            catch (Exception ex)
            {
                msgErro.Visible = true;
                msgErro.Text = ex.Message;

            }
        }
        public void ExibirGridView()
        {

            string pesquisa = "l.email like '%" + txtEmailPerfil.Text + "%'";
            GridPerfil.DataSource = clienteBLL.Pesquisar(pesquisa);
            GridPerfil.DataBind();

            string pesquisaP = "produto";
            GridProdutos.DataSource = produtoBLL.Pesquisar(pesquisaP);
            GridProdutos.DataBind();

            string pesquisaF = "fornecedor";
            GridFornecedores.DataSource = fornecedorBLL.Pesquisar(pesquisaF);
            GridFornecedores.DataBind();
        }

        protected void GridPerfil_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridPerfil.PageIndex = e.NewEditIndex;
            ExibirGridView();
        }

        protected void GridPerfil_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridPerfil.EditIndex = -1;
            ExibirGridView();

        }

        protected void GridPerfil_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            clienteDTO.Id = Convert.ToInt32(GridPerfil.DataKeys[e.RowIndex].Value.ToString());
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
            GridPerfil.EditIndex = -1;
            ExibirGridView();
        }

        protected void GridProdutos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            produtoDTO.Id = Convert.ToInt32(GridProdutos.DataKeys[e.RowIndex].Value.ToString());
            produtoDTO.Nome = e.NewValues[1].ToString();
            produtoDTO.Descricao = e.NewValues[2].ToString();
            produtoDTO.Valor = Convert.ToDouble(e.NewValues[3].ToString());

            //alterar para pegar o id de acordo com o nome do fornecedor
            produtoDTO.FornecedorID = 1;
            produtoDTO.CategoriaID = 1;

            FileUpload fotoProduto = (FileUpload)GridProdutos.Rows[e.RowIndex].FindControl("fileupFoto");

            if (fotoProduto.HasFile)
            {
                String localImagem = Server.MapPath("~/IMG/Produtos/" + fotoProduto.FileName);
                fotoProduto.SaveAs(localImagem);
                produtoDTO.Foto = fotoProduto.FileName.ToString();
            }

            produtoDTO.QuantidadeEstoque = Convert.ToInt32(e.NewValues[6].ToString());

            produtoBLL.Alterar(produtoDTO);
            GridProdutos.EditIndex = -1;
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