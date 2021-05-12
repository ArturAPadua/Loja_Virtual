<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formAdimin.aspx.cs" Inherits="LojaVirtual.UI.formAdimin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton Text="Cadastrar Produtos" ID="btnCadastrarP" class="btn btn-link mb-4" runat="server" OnClick="BtnCadastrarP_Click"></asp:LinkButton>
            <br />
            <asp:LinkButton Text="Consultar e Modificar Produtos" ID="btnConsultarP" class="btn btn-link mb-4" runat="server" OnClick="BtnConsutarModificarP_Click"></asp:LinkButton>
            <br />
            <asp:LinkButton Text="Consultar e Modificar Clientes" ID="btnConsultarL" class="btn btn-link mb-4" runat="server" OnClick="BtnConsutarModificarL_Click"></asp:LinkButton>
            <br />
            <asp:LinkButton Text="Cadastrar Fornecedor" ID="btnCadastrarF" class="btn btn-link mb-4" runat="server" OnClick="BtnCadastrarF_Click"></asp:LinkButton>
            <br />
            <asp:LinkButton Text="Consultar e Modificar Fornecedor" ID="btnConsultarF" class="btn btn-link mb-4" runat="server" OnClick="BtnConsutarModificarF_Click"></asp:LinkButton>
            <br />
            <asp:LinkButton Text="Cadastrar Categoria" ID="btnCadastrarC" class="btn btn-link mb-4" runat="server" OnClick="BtnCadastrarC_Click"></asp:LinkButton>
            <br />
            <asp:LinkButton Text="Consultar e Modificar Categoria" ID="btnConsultarC" class="btn btn-link mb-4" runat="server" OnClick="BtnConsutarModificarC_Click"></asp:LinkButton>
        </div>
    </form>
</body>
</html>
