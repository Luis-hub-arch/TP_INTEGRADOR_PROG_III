<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="Vistas.Usuario.AgregarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
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
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            width: 338px;
        }
        .auto-style10 {
            width: 250px;
            text-align: center;
        }
        .auto-style11 {
            width: 423px;
            text-align: center;
        }
        .auto-style14 {
            height: 23px;
            text-align: left;
            width: 381px;
        }
        .auto-style15 {
            width: 173px;
            text-align: center;
        }
        .auto-style16 {
            width: 173px;
            height: 23px;
            text-align: center;
        }
        .auto-style17 {
            width: 55%;
            height: 208px;
            margin-left: 0px;
        }
        .auto-style18 {
            text-align: left;
            width: 381px;
        }
        .auto-style19 {
            text-align: center;
            width: 381px;
            height: 39px;
        }
        .auto-style20 {
            width: 173px;
            text-align: center;
            height: 39px;
        }
        .auto-style21 {
            margin-left: 267px;
        }
        .auto-style23 {
            text-align: left;
        }
        .auto-style24 {
            width: 173px;
            text-align: center;
            height: 26px;
        }
        .auto-style25 {
            text-align: left;
            width: 381px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Usuarios</td>
            <td class="auto-style5">Usuario<table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AgregarUsuario.aspx">Crear Usuario</asp:HyperLink>
                    </td>
                    <td class="auto-style11">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Usuario/EliminarUsuario.aspx">Eliminar Usuarios</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Usuario/BuscarUsuario.aspx">Buscar Usuario</asp:HyperLink>
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
        <p class="auto-style8">
            Crear Usuario</p>
        <table align="left" class="auto-style17">
            <tr>
                <td class="auto-style16">Nombre</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtNom" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNom">Ingrese Nombre</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Apellido</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtApellido" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido">Ingrese Apellido</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Email</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtEmail" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:CompareValidator ID="cvEmail" runat="server" ControlToValidate="txtEmail" Operator="GreaterThan" Type="Integer" ValueToCompare="0">Ingrese Email</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Numero Celular</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtNumCel" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:CompareValidator ID="cvNumeroCelular" runat="server" ControlToValidate="txtNumCel" Operator="GreaterThan" Type="Integer" ValueToCompare="0">Ingrese Numero Celular</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">Dni</td>
                <td class="auto-style25">
                    <asp:TextBox ID="txtDni" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style25">
                    <asp:CompareValidator ID="cvDni" runat="server" ControlToValidate="txtDni" Operator="GreaterThan" Type="Integer" ValueToCompare="0">Ingrese DNI</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Direccion</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtDireccion" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="TxtDireccion">Ingrese Direccion</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Contraseña</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtContraseña" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña">Ingrese Contraseña</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Tipo de Usuario</td>
                <td class="auto-style18">
                    <asp:DropDownList ID="ddlTipo" runat="server" Height="32px" Width="225px">
                        <asp:ListItem>-- Seleccione Tipo --</asp:ListItem>
                        <asp:ListItem>Administrador</asp:ListItem>
                        <asp:ListItem>Cliente</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="rfvTipo" runat="server" ControlToValidate="ddlTipo" InitialValue="-- Seleccione Tipo --">Ingrese Tipo</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style19">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Width="103px" OnClick="btnGuardar_Click" Height="27px" />
                </td>
                <td class="auto-style19">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <div>
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21" Width="832px">
                <div class="auto-style23">
                    <asp:GridView ID="grdUsuarios" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnRowCancelingEdit="grdUsuarios_RowCancelingEdit" OnRowEditing="grdUsuarios_RowEditing" OnRowUpdating="grdUsuarios_RowUpdating" Width="825px">
                        <Columns>
                            <asp:TemplateField HeaderText="Id usuario">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_eit_idUsuario" runat="server" Text='<%# Bind("IdCliente") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_idUsuario" runat="server" Text='<%# Bind("IdCliente") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Apellido">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Apellido" runat="server" CssClass="auto-style22" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Email" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Email" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Celular">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Celular" runat="server" Text='<%# Bind("Celular") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Celular" runat="server" Text='<%# Bind("Celular") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Dni">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Dni" runat="server" Text='<%# Bind("Dni") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Dni" runat="server" Text='<%# Bind("Dni") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Direccion">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Direccion" runat="server" Text='<%# Bind("Direccion") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Direccion" runat="server" Text='<%# Bind("Direccion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contraseña">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_Contrasena" runat="server" Text='<%# Bind("Contrasena") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_Contrasena" runat="server" Text='<%# Bind("Contrasena") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tipo de Usuario">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_eit_tipo_usuario" runat="server" Text='<%# Bind("Tipo_Usuario") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_it_tipousuario" runat="server" Text='<%# Bind("Tipo_Usuario") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </asp:Panel>
        </div>
        <br />
    </form>
</body>
</html>
