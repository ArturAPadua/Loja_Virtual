<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formConsultaFornecedor.aspx.cs" Inherits="LojaVirtual.UI.formConsultaFornecedor" %>

<!DOCTYPE html>

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
            <asp:GridView ID="GridFornecedores" AutoGenerateColumns="false"
                OnRowEditing="GridFornecedores_RowEditing"
                OnRowCancelingEdit="GridFornecedores_RowCancelingEdit"
               OnRowUpdating="GridFornecedores_RowUpdating"
                DataKeyNames="id"
                OnRowDeleting="GridFornecedores_RowDeleting" runat="server">
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
                    <asp:TemplateField HeaderText="Cnpj">
                        <ItemTemplate>
                            <asp:Label ID="labelCnpj" runat="server" Text='<%# Eval("cnpj")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textCnpj" Text='<%# Bind("cnpj")%>' runat="server">
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

                    <asp:TemplateField HeaderText="NomeRepresentante">
                        <ItemTemplate>
                            <asp:Label ID="labelNomeRepresentante" runat="server" Text='<%# Eval("nomeRepresentante")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textNomeRepresentante" Text='<%# Bind("nomeRepresentante")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="TelefoneRepresentante">
                        <ItemTemplate>
                            <asp:Label ID="labelTelefoneRepresentante" runat="server" Text='<%# Eval("telefoneRepresentante")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textTelefoneRepresentante" Text='<%# Bind("telefoneRepresentante")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>
    </form>
</body>
</html>
