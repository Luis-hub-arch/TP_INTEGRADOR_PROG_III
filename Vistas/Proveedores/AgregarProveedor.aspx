<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarProveedor.aspx.cs" Inherits="Vistas.Proveedores.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
        .auto-style14 {
            width: 53%;
            margin-left: 34px;
        }
        .auto-style17 {
            width: 258px;
            text-align: right;
        }
        .auto-style13 {
            width: 258px;
        }
        .auto-style19 {
            width: 238px;
        }
        .auto-style20 {
            width: 269px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Proveedor</td>
                    <td class="auto-style5">Usuario<table class="auto-style1">
                        <tr>
                            <td class="auto-style10">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Proveedores/AgregarProveedor.aspx">Agregar proveedor</asp:HyperLink>
                            </td>
                            <td class="auto-style11">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Proveedores/EliminarProveedor.aspx">Eliminar proveedor</asp:HyperLink>
                            </td>
                            <td class="auto-style9">
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Proveedores/BuscarProveedor.aspx">Buscar proveedor</asp:HyperLink>
                            </td>
                            <td class="auto-style8"></td>
                        </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <p class="auto-style12">
                Agregar proveedor</p>
            <table align="center" class="auto-style14">
                <tr>
                    <td class="auto-style17">Razon social: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtRazonSocial" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvRazonSocial" runat="server" ControlToValidate="TxtRazonSocial">Ingrese Razon Social</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Marca: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtMarca" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvMarca" runat="server" ControlToValidate="TxtMarca">Ingrese Marca</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Dirección: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtDireccion" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="TxtDireccion">Ingrese Direccion</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Ciudad: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtCiudad" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvCiudad" runat="server" ControlToValidate="TxtCiudad">Ingrese Ciudad</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Provincia</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtProvincia" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="TxtProvincia">Ingrese Provincia</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Cuit</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtCuit" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:CompareValidator ID="cvCuit" runat="server" ControlToValidate="TxtCuit" Operator="GreaterThan" Type="Integer" ValueToCompare="0">Ingrese Numero Cuit</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Telefono</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtTelefono" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:CompareValidator ID="cvTelefono" runat="server" ControlToValidate="TxtTelefono" Operator="GreaterThan" Type="Integer" ValueToCompare="0">Ingrese numero de telefono</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Contacto</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtContacto" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="rfvContacto" runat="server" ControlToValidate="TxtContacto">Ingrese Nombre de Contacto</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Web</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtWeb" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RegularExpressionValidator ID="revWeb" runat="server" ControlToValidate="TxtWeb" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?">Ingrese Pagina Web</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Email</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtEmail" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="TxtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Ingrese Direccion de Correo Electronico</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">CBU: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtCBU" runat="server" Width="214px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:CompareValidator ID="cvCBU" runat="server" ControlToValidate="TxtCBU" Operator="GreaterThan" Type="Integer" ValueToCompare="0">Ingrese Numero de CBU</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style19">
                        <asp:Button ID="BtnAgregar" runat="server" Text="Agregar" Width="129px" OnClick="BtnAgregar_Click" />
                    </td>
                    <td class="auto-style20">
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
