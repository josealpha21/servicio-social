<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="RegistroEmpresa.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 140px;
        }
    .style2
    {
        width: 145px;
    }
        .style3
        {
            width: 140px;
            height: 43px;
        }
        .style4
        {
            width: 145px;
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <br />
    <br />
    <img src="imagenes/registroempresa.jpg" />
    <p>
        Los campos con * son obligatorios
    </p>
    
    <table align="center">
        <tr>
            <td colspan="2" style="color: #0000FF" align="center">
                Datos del Contacto
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" class="style1">
                Nombre(s)*
            </td>
            <td class="style2">
                <asp:TextBox ID="txtnombre" runat="server" OnTextChanged="txtnombre_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                    ControlToValidate="txtnombre" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Apellido paterno*
            </td>
            <td class="style2">
                <asp:TextBox ID="txtapaterno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                    ControlToValidate="txtapaterno" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Apellido materno*
            </td>
            <td class="style2">
                <asp:TextBox ID="txtamaterno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                    ControlToValidate="txtamaterno" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                E-mail*
            </td>
            <td class="style2">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style1">
                Contraseña*
            </td>
            <td class="style2">
                <asp:TextBox ID="txtcontra" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                    ControlToValidate="txtcontra" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Fecha de nacimiento* Ejemplo(0000-12-31)
            </td>
            <td class="style2">
                <asp:TextBox ID="txtnacimiento" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                    ControlToValidate="txtnacimiento" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Sexo*
            </td>
            <td class="style2">
                <asp:RadioButtonList ID="Radiosexo" runat="server">
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                    ControlToValidate="Radiosexo" ErrorMessage="Seleccione una opción" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Puesto</td>
            <td class="style2">
                <asp:TextBox ID="txtPuesto" runat="server"></asp:TextBox>
            </td>
        
        
        <tr>
            <td colspan="2" style="color: #0000FF" align="center">
                &nbsp;&nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="color: #0000FF" align="center">
                Información de la empresa
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3">
                Nombre de la empresa*</td>
            <td class="style4">
                <asp:TextBox ID="txtempresa" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                    ControlToValidate="txtempresa" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Ramo</td>
            <td class="style2">
                <asp:TextBox ID="txtRamo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Dirección</td>
            <td class="style2">
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Ciudad
            </td>
            <td class="style2">
                <asp:TextBox ID="txtciudad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Estado
            </td>
            <td class="style2">
                <asp:TextBox ID="txtestado" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Teléfono celular
            </td>
            <td class="style2">
                <asp:TextBox ID="txtcel" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Teléfono Fijo
            </td>
            <td class="style2">
                <asp:TextBox ID="txtfijo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr><td>RFC</td><td>
            <asp:TextBox ID="RFC" runat="server"></asp:TextBox>
            </td></tr>
        <tr>
            <td colspan="2" style="color: #0000FF" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            </td>
        </tr>
        
        
        
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
