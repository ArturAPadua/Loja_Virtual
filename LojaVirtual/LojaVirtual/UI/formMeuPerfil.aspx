<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formMeuPerfil.aspx.cs" Inherits="LojaVirtual.UI.formMeuPerfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body class="text-center">
    <form id="form1" class="form-signin" runat="server">
        <div class="form-group">
            <asp:Image ImageUrl="~/IMG/logo.jpg" AlternateText="Imagem não carregada" class="img-thumbnail" runat="server" />
            <h1 class="h3 mb-3 font-weight-normal">Acesso ao Sistema</h1>
        </div>
        <div class="form-group">
            <asp:TextBox type="email" ID="txtEmailPerfil" class="form-control" runat="server" Visible="false"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label Text="" ID="msgOK" ForeColor="Green" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
            <asp:Label Text="" ID="msgErro" ForeColor="Red" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
        </div>
        
        <div>
            <asp:GridView ID="GridPerfil" AutoGenerateColumns="false"
                OnRowEditing="GridPerfil_RowEditing"
                OnRowCancelingEdit="GridPerfil_RowCancelingEdit"
               OnRowUpdating="GridPerfil_RowUpdating"
                DataKeyNames="id" runat="server" OnSelectedIndexChanged="GridPerfil_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="Id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="labelId" runat="server" Text='<%# Eval("id")%>' Visible="false">
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nome">
                        <ItemTemplate>
                            <asp:Label ID="labelNome" runat="server" Text='<%# Eval("nome")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textNome" Text='<%# Bind("nome")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefone">
                        <ItemTemplate>
                            <asp:Label ID="labelTelefone" runat="server" Text='<%# Eval("telefone")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textTelefone" Text='<%# Bind("telefone")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cpf">
                        <ItemTemplate>
                            <asp:Label ID="labelCpf" runat="server" Text='<%# Eval("cpf")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textCpf" Text='<%# Bind("cpf")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rua">
                        <ItemTemplate>
                            <asp:Label ID="labelRua" runat="server" Text='<%# Eval("rua")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textRua" Text='<%# Bind("rua)%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Numero">
                        <ItemTemplate>
                            <asp:Label ID="labelNumero" runat="server" Text='<%# Eval("numero")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textNumero" Text='<%# Bind("numero")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Bairro">
                        <ItemTemplate>
                            <asp:Label ID="labelBairro" runat="server" Text='<%# Eval("bairro")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textBairro" Text='<%# Bind("bairro")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cidade">
                        <ItemTemplate>
                            <asp:Label ID="labelCidade" runat="server" Text='<%# Eval("cidade")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textCidade" Text='<%# Bind("cidade")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cep">
                        <ItemTemplate>
                            <asp:Label ID="labelCep" runat="server" Text='<%# Eval("cep")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textCep" Text='<%# Bind("cep")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="labelEmail" runat="server" Text='<%# Eval("email")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textEmail" Text='<%# Bind("email")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField><asp:TemplateField HeaderText="Senha">
                        <ItemTemplate>
                            <asp:Label ID="labelSenha" runat="server" Text='<%# Eval("senha")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textSenha" Text='<%# Bind("senha")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                   <asp:CommandField ShowEditButton="true" ButtonType="Image" HeaderText="Editar" EditImageUrl="~/IMG/editar.png" 
                       CancelImageUrl="~/IMG/cancelar.png" UpdateImageUrl="~/IMG/atualizar.png" runat="server">
                   </asp:CommandField>

                </Columns>

            </asp:GridView>
        </div>
        <br />
        <div>
            <asp:GridView ID="GridProdutos" AutoGenerateColumns="false"
               OnRowUpdating="GridProdutos_RowUpdating"
                DataKeyNames="idP" runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="Id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="labelIdP" runat="server" Text='<%# Eval("id")%>' Visible="false">
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nome">
                        <ItemTemplate>
                            <asp:Label ID="labelNomeP" runat="server" Text='<%# Eval("nome")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textNomeP" Text='<%# Bind("nome")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Descrição">
                        <ItemTemplate>
                            <asp:Label ID="labelDescricaoP" runat="server" Text='<%# Eval("descricao")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textDescricaoP" Text='<%# Bind("descricao")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Valor">
                        <ItemTemplate>
                            <asp:Label ID="labelValorP" runat="server" Text='<%# Eval("valor")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textValorP" Text='<%# Bind("valor")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fornecedor">
                        <ItemTemplate>
                            <asp:Label ID="labelFornecedorP" runat="server" Text='<%# Eval("fornecedor")%>'>
                            </asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Categoria">
                        <ItemTemplate>
                            <asp:Label ID="labelCategoriaP" runat="server" Text='<%# Eval("categoria")%>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Foto">
                        <ItemTemplate>
                            <asp:Image ID="labelFotoP" runat="server" ImageUrl='<%# "~/IMG/Produtos/" + Eval("foto")%>' Width="240" Height="160"></asp:Image>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="fileupFotoP" runat="server">
                            </asp:FileUpload>
                        </EditItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="QuantidadeEstoque">
                        <ItemTemplate>
                            <asp:Label ID="labelQuantidadeEstoqueP" runat="server" Text='<%# Eval("quantidadeEstoque")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textQuantidadeEstoqueP" Text='<%# Bind("quantidadeEstoque")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>
        <br />
        <div>
            <asp:GridView ID="GridFornecedores" AutoGenerateColumns="false"
               OnRowUpdating="GridFornecedores_RowUpdating"
                DataKeyNames="id" runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="Id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="labelIdF" runat="server" Text='<%# Eval("id")%>' Visible="false">
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nome">
                        <ItemTemplate>
                            <asp:Label ID="labelNomeF" runat="server" Text='<%# Eval("nome")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textNomeF" Text='<%# Bind("nome")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cnpj">
                        <ItemTemplate>
                            <asp:Label ID="labelCnpjF" runat="server" Text='<%# Eval("cnpj")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textCnpjF" Text='<%# Bind("cnpj")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="labelEmailF" runat="server" Text='<%# Eval("email")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textEmailF" Text='<%# Bind("email")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefone">
                        <ItemTemplate>
                            <asp:Label ID="labelTelefoneF" runat="server" Text='<%# Eval("telefone")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textTelefoneF" Text='<%# Bind("telefone")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="NomeRepresentante">
                        <ItemTemplate>
                            <asp:Label ID="labelNomeRepresentanteF" runat="server" Text='<%# Eval("nomeRepresentante")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textNomeRepresentanteF" Text='<%# Bind("nomeRepresentante")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="TelefoneRepresentante">
                        <ItemTemplate>
                            <asp:Label ID="labelTelefoneRepresentanteF" runat="server" Text='<%# Eval("telefoneRepresentante")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textTelefoneRepresentanteF" Text='<%# Bind("telefoneRepresentante")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>

    </form>
    <footer>
        <div class="footer-copy-right">
            Copyright &copy; Desenvolvido por Rafaela. Todos os direitos reservados.
        </div>

    </footer>
</body>
</html>