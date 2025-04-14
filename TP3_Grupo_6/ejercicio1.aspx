<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio1.aspx.cs" Inherits="TP3_Grupo_6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 83%;
        }
        .auto-style2 {
            height: 23px;
            width: 243px;
        }
        .auto-style3 {
            width: 157px;
        }
        .auto-style4 {
            height: 23px;
            width: 157px;
        }
        .auto-style5 {
            width: 203px;
        }
        .auto-style6 {
            height: 23px;
            width: 203px;
        }
        .auto-style9 {
            width: 243px;
        }
        .auto-style10 {
            width: 159px;
        }
        .auto-style11 {
            height: 23px;
            width: 159px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Localidades"></asp:Label>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Nombre de Localidad"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtLocalidad" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" ForeColor="Red">Ingrese una localidad</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="revLocalidad" runat="server" ControlToValidate="txtLocalidad" ForeColor="Red" ValidationExpression="[a-zA-Z0-9 ]+$">No ingrese valores especiales</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style11">
                    <asp:Label ID="repetido" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="guardarlocate" runat="server" OnClick="guardarlocate_Click" Text="Guardar Localidad" />
                </td>
                <td class="auto-style9">
                    <asp:Label ID="guardarLocalidad" runat="server"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="userlbl" runat="server" Font-Bold="True" Text="Usuarios"></asp:Label>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Nombre Usuario</td>
                <td class="auto-style5">
                    <asp:TextBox ID="namebox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Contraseña</td>
                <td class="auto-style5">
                    <asp:TextBox ID="contrabox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Repetir contraseña</td>
                <td class="auto-style5">
                    <asp:TextBox ID="repcontrabox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Correo electrónico</td>
                <td class="auto-style5">
                    <asp:TextBox ID="mailbox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">CP</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Cpbox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Localidad</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="locatelist" runat="server" Height="16px" Width="153px">
                        <asp:ListItem Value="0">--Ingrese localidad--</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
