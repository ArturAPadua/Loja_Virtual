<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formConsultaProdutos.aspx.cs" Inherits="LojaVirtual.UI.formConsultaProdutos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

</head>
<body>
    <form id="form1" runat="server">
       <div>
             <asp:TextBox ID="TextBoxPesq" placeholder="Pesquisar por parte do nome" runat ="server"></asp:TextBox>
           <asp:Button ID="BtnPesquisar" Class="btn btn-lg btn-primary mb-4" runat="server" Text="Pesquisar" OnClick="BtnPesquisar_Click"/>
        </div>
        
        <div>
            <asp:GridView ID="GridProdutos" AutoGenerateColumns="false"
                OnRowEditing="GridProdutos_RowEditing"
                OnRowCancelingEdit="GridProdutos_RowCancelingEdit"
               OnRowUpdating="GridProdutos_RowUpdating"
                DataKeyNames="id"
                OnRowDeleting="GridProdutos_RowDeleting" runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="Id">
                        <ItemTemplate>
                            <asp:Label ID="labelId" runat="server" Text='<%# Eval("id")%>'>
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
                    <asp:TemplateField HeaderText="Descrição">
                        <ItemTemplate>
                            <asp:Label ID="labelDescricao" runat="server" Text='<%# Eval("descricao")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textDescricao" Text='<%# Bind("descricao")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Valor">
                        <ItemTemplate>
                            <asp:Label ID="labelValor" runat="server" Text='<%# Eval("valor")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textValor" Text='<%# Bind("valor")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FornecedorId">
                        <ItemTemplate>
                            <asp:Label ID="labelFornecedorId" runat="server" Text='<%# Eval("fornecedorId")%>'>
                            </asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CategoriaId">
                        <ItemTemplate>
                            <asp:Label ID="labelCategoriaId" runat="server" Text='<%# Eval("categoriaId")%>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Foto">
                        <ItemTemplate>
                            <asp:Image ID="labelFoto" runat="server" ImageUrl='<%# "~/IMG/Produtos/" + Eval("foto")%>' Width="240" Height="160"></asp:Image>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="fileupFoto" runat="server">
                            </asp:FileUpload>
                        </EditItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="QuantidadeEstoque">
                        <ItemTemplate>
                            <asp:Label ID="labelQuantidadeEstoque" runat="server" Text='<%# Eval("quantidadeEstoque")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textQuantidadeEstoque" Text='<%# Bind("quantidadeEstoque")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>
    </form>
</body>
</html>
