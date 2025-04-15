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
            width: 194px;
        }
        .auto-style3 {
            width: 157px;
        }
        .auto-style4 {
            height: 23px;
            width: 157px;
        }
        .auto-style5 {
            width: 111px;
        }
        .auto-style6 {
            height: 23px;
            width: 111px;
        }
        .auto-style9 {
            width: 194px;
        }
        .auto-style10 {
            width: 159px;
        }
        .auto-style11 {
            height: 23px;
            width: 159px;
        }
        .auto-style12 {
            width: 157px;
            height: 27px;
        }
        .auto-style13 {
            width: 111px;
            height: 27px;
        }
        .auto-style14 {
            width: 194px;
            height: 27px;
        }
        .auto-style15 {
            width: 159px;
            height: 27px;
        }
        .auto-style16 {
            width: 157px;
            height: 26px;
        }
        .auto-style17 {
            width: 111px;
            height: 26px;
        }
        .auto-style18 {
            width: 194px;
            height: 26px;
        }
        .auto-style19 {
            width: 159px;
            height: 26px;
        }
        .auto-style20 {
            width: 157px;
            height: 22px;
        }
        .auto-style21 {
            width: 111px;
            height: 22px;
        }
        .auto-style22 {
            width: 194px;
            height: 22px;
        }
        .auto-style23 {
            width: 159px;
            height: 22px;
        }
        .auto-style24 {
            width: 157px;
            height: 25px;
        }
        .auto-style25 {
            width: 111px;
            height: 25px;
        }
        .auto-style26 {
            width: 194px;
            height: 25px;
        }
        .auto-style27 {
            width: 159px;
            height: 25px;
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
                    <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" ForeColor="Red" ValidationGroup="group1">Ingrese una localidad</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="revLocalidad" runat="server" ControlToValidate="txtLocalidad" ForeColor="Red" ValidationExpression="[a-zA-Z0-9 ]+$" ValidationGroup="group1">No ingrese valores especiales</asp:RegularExpressionValidator>
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
                    <asp:Button ID="guardarlocate" runat="server" OnClick="guardarlocate_Click" Text="Guardar Localidad" ValidationGroup="group1" />
                </td>
                <td class="auto-style9">
                    <asp:Label ID="guardarLocalidad" runat="server"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Label ID="userlbl" runat="server" Font-Bold="True" Text="Usuarios"></asp:Label>
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style3">Nombre Usuario</td>
                <td class="auto-style5">
                    <asp:TextBox ID="namebox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="namebox" ForeColor="Red">Ingrese un usuario.</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Contraseña</td>
                <td class="auto-style5">
                    <asp:TextBox ID="contrabox" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="contrabox" ForeColor="Red">Ingrese la contraseña</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Repetir contraseña</td>
                <td class="auto-style5">
                    <asp:TextBox ID="repcontrabox" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="rfvPassword2" runat="server" ControlToValidate="repcontrabox" ForeColor="Red">Repita la contraseña</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">
                    <asp:CompareValidator ID="cvContrasenia" runat="server" ControlToCompare="contrabox" ControlToValidate="repcontrabox" ForeColor="Red">Contraseña incorrecta</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">Correo electrónico</td>
                <td class="auto-style25">
                    <asp:TextBox ID="mailbox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfvMailbox" runat="server" ControlToValidate="mailbox" ForeColor="Red">Ingrese el correo</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style27">
                    <asp:RegularExpressionValidator ID="mailREV" runat="server" ControlToValidate="mailbox" ErrorMessage="Ingrese un correo valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">CP</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Cpbox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="rfvCodigoPostal" runat="server" ControlToValidate="Cpbox" ForeColor="Red">Ingrese Codigo Postal</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Cpbox" CultureInvariantValues="True" ErrorMessage="Ingrese un numero de 4 digitos" ForeColor="Red" MaximumValue="9999" MinimumValue="1000" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Localidad</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="locatelist" runat="server" Height="16px" Width="153px">
                        <asp:ListItem Value="0">--Ingrese localidad--</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="rfvLocal" runat="server" ControlToValidate="locatelist" ForeColor="Red" InitialValue="0">Seleccione una localidad</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
                <td class="auto-style22"></td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="buttonUsuario" runat="server" Text="Guardar Usuario" OnClick="buttonUsuario_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Label ID="lblWelcome" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnInicioaspx" runat="server" Text="Ir a inicio aspx" Width="137px" CausesValidation="False" OnClick="btnInicioaspx_Click" />
                </td>
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
