<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Copy of Registro.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 140px;
        }
    .style2
    {
            width: 225px;
        }
        #TextArea1
        {
            width: 211px;
        }
        #TextArea2
        {
            width: 211px;
        }
        #TextArea3
        {
            width: 211px;
        }
    </style>


</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <br />
    <br />
    <img src="imagenes/registroegresado.jpg" />
    <br />
    <p>Una vez que te hayas registrado podras iniciar sesión para que puedas completar un perfil y enviarnos tu curriculum </p>
    <p>
        Los campos con * son obligatorios
    </p>
    
    <table align="center" class="tabla">
        <tr>
            <td colspan="2" style="color: #0000FF" align="center">
                Datos del Contacto
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" class="style1">
                Nombre(s)*</td>
            <td class="style2">
                <asp:TextBox ID="txtnombre" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtnombre" ErrorMessage="Ingrese algo" ForeColor="Red" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Apellido paterno*</td>
            <td class="style2">
                <asp:TextBox ID="txtapaterno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtapaterno" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Apellido materno*</td>
            <td class="style2">
                <asp:TextBox ID="txtamaterno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtamaterno" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                E-mail*</td>
            <td class="style2">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Esto no es un correo" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style1">
                Repita la E-mail por favor</td>
            <td class="style2">
                <asp:TextBox ID="txtcorreorepite" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtemail" ControlToValidate="txtcorreorepite" 
                    ErrorMessage="El correo no coincide" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>

        <tr>
            <td class="style1">
                Contraseña*</td>
            <td class="style2">
                <asp:TextBox ID="txtcontra" runat="server" TextMode="Password" Columns="10"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtcontra" 
                    ErrorMessage="Las contraseñas deben tener 8 caracteres como mínimo y contener los siguientes elementos: mayúsculas, minúsculas, números" 
                    ForeColor="Red" 
                    ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style1">
                Sexo*</td>
            <td class="style2">
                <asp:RadioButtonList ID="Radiosexo" runat="server">
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                    ControlToValidate="Radiosexo" ErrorMessage="Seleccione algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
       
            
                
                    <tr><td>Matricula*</td><td class="style2">
                        <asp:TextBox ID="txtMatricula" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtMatricula" ErrorMessage="Matricula incorrecta" 
                            ForeColor="Red" ValidationExpression="\d{8}"></asp:RegularExpressionValidator>
                        </td></tr>
        <tr>
            <td colspan="2" style="color: #0000FF" align="center">
                &nbsp;&nbsp; &nbsp;
            </td>
        </tr>
        
       
        <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td colspan=2>
     &nbsp;</td></tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
