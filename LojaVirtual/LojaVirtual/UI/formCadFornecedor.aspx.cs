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
    public partial class formCadFornecedor : System.Web.UI.Page
    {
        FornecedorDTO fornecedorDTO = new FornecedorDTO();
        FornecedorBLL fornecedorBLL = new FornecedorBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            try
            {
                fornecedorDTO.Nome = nome.Text;
                fornecedorDTO.Cnpj = cnpj.Text;
                fornecedorDTO.Email = email.Text;
                fornecedorDTO.Telefone = telefone.Text;
                fornecedorDTO.NomeRepresentante = nomeRepresentante.Text;
                fornecedorDTO.TelefoneRepresentante = telefoneRepresentante.Text;

                fornecedorBLL.Inserir(fornecedorDTO);

                // alert
                string mensagem = "Fornecedor inserido com sucesso!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + mensagem + "')", true);

            }
            catch (Exception ex)
            {
                msgErro.Visible = true;
                msgErro.Text = ex.Message;
            }

        }

        protected void Cancelar_Click(object sender, EventArgs e)
        {
            nome.Text = "";
            cnpj.Text = "";
            email.Text = "";
            telefone.Text = "";
            nomeRepresentante.Text = "";
            telefoneRepresentante.Text = "";
            // completar
        }
    }
}