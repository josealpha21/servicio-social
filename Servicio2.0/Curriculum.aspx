<%@ Page Title="Currículum" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Curriculum.aspx.cs" Inherits="Seleccionregistro" %>

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
    <img src="imagenes/curriculum.jpg" class="imagen" align="middle" 
        style="height: 70px; width: 552px"/>
    <p class="style1">
        Mandanos tu curriculum, en un archivo de Microsoft Word, archivo PDF o imagen, 
        no mayor a 2MB nombrado con tu nombre completo.</p>
    <p class="style1">
        <asp:FileUpload ID="FileUpload1" runat="server"  />
        <asp:Label ID="UploadStatusLabel" runat="server"></asp:Label>
    </p>
    <p class="style1">
        <asp:Button ID="Button1" runat="server" Text="Subir Archivo" 
            UseSubmitBehavior="False" onclick="Button1_Click" />
    </p>
    <p class="style1">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Regresar" />
</p>
    <p class="style1">
        &nbsp;</p>
    
</asp:Content>

