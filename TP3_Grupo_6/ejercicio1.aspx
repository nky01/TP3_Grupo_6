<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio1.aspx.cs" Inherits="TP3_Grupo_6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 94%;
            margin-right: 117px;
        }
        .auto-style2 {
            height: 23px;
            width: 617px;
        }
        .auto-style3 {
            width: 135px;
        }
        .auto-style4 {
            height: 23px;
            width: 135px;
        }
        .auto-style10 {
            width: 246px;
        }
        .auto-style11 {
            height: 23px;
            width: 246px;
        }
        .auto-style12 {
            width: 135px;
            height: 27px;
        }
        .auto-style14 {
            width: 617px;
            height: 27px;
        }
        .auto-style15 {
            width: 246px;
            height: 27px;
        }
        .auto-style16 {
            width: 135px;
            height: 26px;
        }
        .auto-style19 {
            width: 246px;
            height: 26px;
        }
        .auto-style20 {
            width: 135px;
            height: 22px;
        }
        .auto-style22 {
            width: 617px;
            height: 22px;
        }
        .auto-style23 {
            width: 246px;
            height: 22px;
        }
        .auto-style24 {
            width: 135px;
            height: 25px;
        }
        .auto-style26 {
            width: 617px;
            height: 25px;
        }
        .auto-style27 {
            width: 246px;
            height: 25px;
        }
        .auto-style35 {
            height: 23px;
            width: 134px;
        }
        .auto-style37 {
            width: 134px;
            height: 27px;
        }
        .auto-style38 {
            width: 134px;
            height: 25px;
        }
        .auto-style39 {
            width: 134px;
            height: 22px;
        }
        .auto-style45 {
            width: 134px;
        }
        .auto-style46 {
            width: 617px;
        }
        .auto-style47 {
            width: 134px;
            height: 26px;
        }
        .auto-style48 {
            width: 617px;
            height: 26px;
        }
        .auto-style49 {
            margin-left: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }
        .auto-style50 {
            width: 135px;
            height: 6px;
        }
        .auto-style51 {
            width: 134px;
            height: 6px;
        }
        .auto-style52 {
            width: 617px;
            height: 6px;
        }
        .auto-style53 {
            width: 246px;
            height: 6px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style45">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Localidades"></asp:Label>
                </td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Nombre de Localidad"></asp:Label>
                </td>
                <td class="auto-style35">
                    <asp:TextBox ID="txtLocalidad" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" ForeColor="Red" ValidationGroup="grupo1" ErrorMessage="Ingrese una localidad">*</asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="revLocalidad" runat="server" ControlToValidate="txtLocalidad" ForeColor="Red" ValidationExpression="[a-zA-Z0-9 ]+$" ValidationGroup="grupo1" ErrorMessage="No ingrese valores especiales">*</asp:RegularExpressionValidator>
                &nbsp;<asp:CustomValidator ID="cvLocalidades" runat="server" ErrorMessage="Localidad ya ingresada" ForeColor="Red" OnServerValidate="cvLocalidades_ServerValidate" ValidationGroup="grupo1">*</asp:CustomValidator>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style50"></td>
                <td class="auto-style51"></td>
                <td class="auto-style52"></td>
                <td class="auto-style53"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style45">
                    <asp:Button ID="guardarlocate" runat="server" OnClick="guardarlocate_Click" Text="Guardar Localidad" ValidationGroup="grupo1" />
                </td>
                <td class="auto-style46">
                    <asp:Label ID="guardarLocalidad" runat="server" ForeColor="Green"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style47"></td>
                <td class="auto-style48">
                    <asp:ValidationSummary ID="vsLocalidades" runat="server" CssClass="auto-style49" ForeColor="Red" Height="32px" ValidationGroup="grupo1" Width="394px" />
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style37">
                    <asp:Label ID="userlbl" runat="server" Font-Bold="True" Text="Usuarios"></asp:Label>
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style47"></td>
                <td class="auto-style48"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style3">Nombre Usuario</td>
                <td class="auto-style45">
                    <asp:TextBox ID="namebox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style46">
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="namebox" ForeColor="Red" ErrorMessage="Ingrese un usuario." ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Contraseña</td>
                <td class="auto-style45">
                    <asp:TextBox ID="contrabox" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style46">
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="contrabox" ForeColor="Red" ErrorMessage="Ingrese la contraseña" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Repetir contraseña</td>
                <td class="auto-style45">
                    <asp:TextBox ID="repcontrabox" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style46">
                    <asp:RequiredFieldValidator ID="rfvPassword2" runat="server" ControlToValidate="repcontrabox" ForeColor="Red" ErrorMessage="Repita la contraseña" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="cvContrasenia" runat="server" ControlToCompare="contrabox" ControlToValidate="repcontrabox" ForeColor="Red" ErrorMessage="Contraseña incorrecta" ValidationGroup="grupo2">*</asp:CompareValidator>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">Correo electrónico</td>
                <td class="auto-style38">
                    <asp:TextBox ID="mailbox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfvMailbox" runat="server" ControlToValidate="mailbox" ForeColor="Red" ErrorMessage="Ingrese el correo" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="mailREV" runat="server" ControlToValidate="mailbox" ErrorMessage="Ingrese un correo valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grupo2">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style27">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">CP</td>
                <td class="auto-style45">
                    <asp:TextBox ID="Cpbox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style46">
                    <asp:RequiredFieldValidator ID="rfvCodigoPostal" runat="server" ControlToValidate="Cpbox" ForeColor="Red" ErrorMessage="Ingrese Codigo Postal" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Cpbox" CultureInvariantValues="True" ErrorMessage="Ingrese un numero de 4 digitos" ForeColor="Red" MaximumValue="9999" MinimumValue="1000" Type="Integer" ValidationGroup="grupo2">*</asp:RangeValidator>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Localidad</td>
                <td class="auto-style45">
                    <asp:DropDownList ID="locatelist" runat="server" Height="25px" Width="153px">
                        <asp:ListItem Value="0">--Ingrese localidad--</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style46">
                    <asp:RequiredFieldValidator ID="rfvLocal" runat="server" ControlToValidate="locatelist" ForeColor="Red" InitialValue="0" ErrorMessage="Seleccione una localidad" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style39"></td>
                <td class="auto-style22"></td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style45">
                    <asp:Button ID="buttonUsuario" runat="server" Text="Guardar Usuario" OnClick="buttonUsuario_Click" ValidationGroup="grupo2" />
                </td>
                <td class="auto-style46">
                    <asp:Label ID="lblWelcome" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style46">
                    <asp:ValidationSummary ID="vsUsuarios" runat="server" ForeColor="Red" ValidationGroup="grupo2" />
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnInicioaspx" runat="server" Text="Ir a inicio aspx" Width="137px" CausesValidation="False" OnClick="btnInicioaspx_Click" />
                </td>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
