<%@ Page Title="Selección inicio" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="seleccionInicio.aspx.cs" Inherits="Seleccionregistro" %>

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
    <img src="imagenes/seleccionsesion.jpg" />
    <p class="style1">
        Seleciona si te registraste como empresa o como egresado para que puedas iniciar 
        sesión</p>
    <p class="style1" style="font-weight: bold">
        Inicio de sesión de egresado</p>
    <p class="style1">
        <asp:Button ID="Button1" runat="server" 
            PostBackUrl="~/IniciosesionEgresado.aspx" Text="Egresado" />
    </p>
    <p class="style1" style="font-weight: bold">
        Inicio de sesión de negocio</p>
    <p class="style1">
        <asp:Button ID="Button2" runat="server" Text="Empresa" 
            PostBackUrl="~/IniciosesionEmpresa.aspx" />
    </p>
    
</asp:Content>

