<%@ Page Title="Inicio Sesión" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="IniciosesionEgresado.aspx.cs" Inherits="_Default" %>

    
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        #txtUsuario
        {
            width: 191px;
            }
        </style>
<script src="scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        
        
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <br />
    <br />
   
    <img src="imagenes/sesionegresado.jpg" name="img"  ><br />
    <br />
&nbsp;

<table class="tabla" align="center">
        <tr>
            <td>
                Matricula</td>
            <td >
                <input id="txtUsuario" runat="server" type="text" onfocus="this.value=''" maxlength="50" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="txtcontra" runat="server" TextMode="Password" Width="152px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btniniciar" runat="server" OnClick="Button1_Click"  Text="Iniciar" />
            </td>
        </tr>
    </table>
   
    <p>
        
        
    </p>
    <p>
        
        
    </p>
    <p>
        
    </p>
<p>
        <asp:Label ID="lblresultado" runat="server"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridViewtriki" runat="server" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </p>
</asp:Content>
