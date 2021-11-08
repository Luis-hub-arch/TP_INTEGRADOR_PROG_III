<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarCategoria.aspx.cs" Inherits="Vistas.AgregarCategoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title>CATEGORIAS</title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 184px;
            text-align: center;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style10 {
            width: 250px;
            text-align: center;
            height: 23px;
        }
        .auto-style11 {
            width: 294px;
            text-align: center;
            height: 23px;
        }
        .auto-style9 {
            text-align: center;
            width: 338px;
            height: 23px;
        }
        .auto-style8 {
            text-align: center;
            height: 23px;
        }
        .auto-style12 {
            text-align: center;
            font-size: large;
        }
        .auto-style13 {
            width: 258px;
        }
        .auto-style14 {
            width: 54%;
            margin-left: 34px;
        }
        .auto-style15 {
            width: 258px;
            height: 23px;
            text-align: center;
        }
        .auto-style16 {
            height: 23px;
            width: 293px;
        }
        .auto-style17 {
            width: 258px;
            text-align: center;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style19 {
            text-align: center;
        }
        .auto-style20 {
            width: 657px;
        }
        .auto-style21 {
            width: 293px;
        }
        .auto-style22 {
            width: 293px;
            text-align: center;
        }
        .auto-style23 {
            height: 23px;
            width: 293px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style18">
        <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Categorias</td>
            <td class="auto-style5">Usuario<table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Categoria/AgregarCategoria.aspx">Crear Categoria</asp:HyperLink>
                    </td>
                    <td class="auto-style11">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Categoria/EliminarCategoria.aspx">Eliminar Categoria</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Categoria/BuscarCategoria.aspx">Buscar Categoria</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
        </div>
        <p class="auto-style12">
            <strong>Crear Categoria</strong></p>
        <table align="center" class="auto-style14">
            <tr>
                <td class="auto-style15">Nombre de Categoria</td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtNombreCat" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="rfvNomCat" runat="server" ControlToValidate="txtNombreCat">Ingrese Categoria</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Descripcion</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtDescripcion" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion">Ingrese Descripcion</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:Button ID="btnCrear" runat="server" Text="Crear" Width="129px" OnClick="btnCrear_Click" />
                </td>
                <td class="auto-style21">
                    &nbsp;</td>
            </tr>
        </table>
            <div class="auto-style19">
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style20">&nbsp;</td>
                        <td>
                            <asp:GridView ID="grdCategorias" runat="server">
                            </asp:GridView>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>

