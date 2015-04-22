<%@ Page Title="Registrado" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Registrado.aspx.cs" Inherits="Seleccionregistro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #000000;
            font-size: medium;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
<br />
    &nbsp;<p class="style1">
        Registro completado, hemos enviado un correo a su cuenta, con información 
        importante por favor verifíquelo.</p>
    <p class="style1">
        Cuando inicie sesión por favor vaya a &quot;Perfil egresado&quot; y llene un perfil de 
        información.</p>
    <p class="style1">
        &nbsp;</p>
    <p class="style1">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Regresar" />
</p>
    <p class="style1">
        &nbsp;</p>
    
</asp:Content>

