<%@ Page Title="Selección registro" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Seleccionregistro.aspx.cs" Inherits="Seleccionregistro" %>

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
    <img src="imagenes/seleccionregistro.jpg" class="imagen" 
        style="height: 77px; width: 557px"/>
    <p class="style1">
    Puedes registrar tu negocio, es decir, registrarte como empresa o puedes 
    registrarte como egresado, seleciona la opción que prefieras</p>
    <p class="style1" style="font-weight: bold">
        Registro de egresado</p>
    <p class="style1">
        <asp:Button ID="Button1" runat="server" 
            PostBackUrl="~/Copy of Registro.aspx" Text="Egresado" 
            UseSubmitBehavior="False"  />
    </p>
    <p class="style1" style="font-weight: bold">
        Registro de negocio</p>
    <p class="style1">
        <asp:Button ID="Button2" runat="server" Text="Empresa" 
            PostBackUrl="~/RegistroEmpresa.aspx" UseSubmitBehavior="False" />
    </p>
    
</asp:Content>

