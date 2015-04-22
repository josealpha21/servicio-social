<%@ Page Title="Inicio, Bienvenido" Language="C#" MasterPageFile="~/Site.master"
    AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <style type="text/css">
        .style2
        {
            font-size: xx-large;
            color: #000000;
        }
        .style3
        {
            color: #000000;
            height: 197px;
        }
        .style4
        {
            width: 242px;
        }
        .style5
        {
            width: 242px;
            height: 197px;
        }
        .style6
        {
            width: 242px;
            height: 104px;
        }
        .style7
        {
            height: 104px;
        }
    </style>
    <script src="scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function hola() { alert("hola mucho gusto"); }
    
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h1 class="style2" align="center">
        <em>Bienvenido al sitio de egresados del ITCH II</em></h1>
    <table>
        <tr>
            <td class="style5">
                <img alt="Bisonte" class="imagen" src="imagenes/LogoBisonte.png" style="height: 190px;
                    width: 242px" />
            </td>
            <td class="style3">
                <asp:Panel ID="Panel1" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large">
                    Este sitio es para que registres tus datos y podamos llevar estadísticas de ti y
                    de todos tus compañeros egresados, también tendrá información útil para ti. También
                    tendrás la oportunidad de ser parte de la bolsa de trabajo. De esta manera estarás
                    al tanto de lo que pasa dentro del ITCH II.
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#999999"
                    Text="Enlaces externos"></asp:Label>
                <div id="lista">
                    <ul class="listalink">
                        <li><a href="http://www.itchihuahuaii.edu.mx">ITCH II</a> </li>
                        <li> <a href="http://itchihuahua.occ.com.mx">Bolsa de trabajo</a>
                        </li>
                        <li><a href="http://sii.itchihuahuaii.edu.mx">Sit. integral de información SII</a>
                        </li>
                    </ul>
                </div>
            </td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Text="Descargar archivo .csv" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Descargar"
                    Visible="False" />
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <div id="disqus_thread"></div>
<script type="text/javascript">
    /* * * CONFIGURATION VARIABLES * * */
    var disqus_shortname = 'egresadositchii';

    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function () {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
    <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">
        Disqus</span></a>

    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
