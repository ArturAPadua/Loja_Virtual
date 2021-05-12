<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formTabelaCliente.aspx.cs" Inherits="LojaVirtual.UI.formTabelaCliente" %>

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
          <asp:Button ID="BtnNovo" Class="btn btn-lg btn-primary mb-4" runat="server" Text="Novo Produto" OnClick="BtnNovo_Click" />
        </div>
        
        <div>
            <asp:GridView ID="GridClientes" AutoGenerateColumns="false"
                OnRowEditing="GridClientes_RowEditing"
                OnRowCancelingEdit="GridClientes_RowCancelingEdit"
               OnRowUpdating="GridClientes_RowUpdating"
                DataKeyNames="id"
                OnRowDeleting="GridClientes_RowDeleting" runat="server" OnSelectedIndexChanged="GridClientes_SelectedIndexChanged">
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

                    <asp:CommandField ShowDeleteButton="true" ButtonType="Image" HeaderText="Excluir" DeleteImageUrl="~/IMG/deletar.png" runat="server">
                    </asp:CommandField>

                </Columns>

            </asp:GridView>

        </div>
    </form>
</body>
</html>
