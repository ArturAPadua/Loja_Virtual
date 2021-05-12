<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formCadCategoria.aspx.cs" Inherits="LojaVirtual.UI.formCadCategoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cliente</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body>

    <nav>
        <div>
            <ul>
                <li>
                    <asp:HyperLink ID="HyperLinkInicial" NavigateUrl="~/UI/index.aspx" Text="Inicial" runat="server"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLinkClientes" NavigateUrl="~/UI/formTableCategoria.aspx" Text="Produtos" runat="server"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLinkVoltar" NavigateUrl="~/UI/formPrincipal.aspx" Text="Principal" runat="server"></asp:HyperLink>
                </li>
            </ul>
        </div>
    </nav>
    <main>
        <form id="form" runat="server">

            <div>
                <asp:HiddenField ID="id" runat="server" />

                <div>
                    <asp:Label for="nome" Text="Nome" runat="server"></asp:Label>
                    <asp:TextBox ID="nome" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label for="descricao" Text="Descricao" runat="server"></asp:Label>
                    <asp:TextBox ID="descricao" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Button ID="salvar" runat="server" Text="Salvar" OnClick="Salvar_Click" />
                    <asp:Button ID="cancelar" runat="server" Text="Cancelar" OnClick="Cancelar_Click" />
                </div>
                <div class="form-group">
                    <asp:Label Text="" ID="msgOK" ForeColor="Green" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
                    <asp:Label Text="" ID="msgErro" ForeColor="Red" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
                </div>

            </div>

        </form>
    </main>

    <footer>
        <div class="footer-copy-right">
            Copyright &copy; Desenvolvido por Rafaela. Todos os direitos reservados.
        </div>

    </footer>
</body>
</html>