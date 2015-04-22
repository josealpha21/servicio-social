<%@ Page Title="Perfil Egresado" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="PerfilEgresado.aspx.cs" Inherits="About" %>

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
        .style3
        {
            height: 29px;
        }
        .style4
        {
            width: 225px;
            height: 29px;
        }
        </style>
        
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Aqui puedes verificar y modificar tus datos</h2>
    <p>
        &nbsp;<asp:GridView ID="GridViewperfil" runat="server" CellPadding="4" 
            ForeColor="#333333" GridLines="None" Visible="False">
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
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Enviar curriculum" />
    </p>
    
    <table align="center">
        <tr>
            <td colspan="2" style="color: #0000FF" align="center">
                Datos personales
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" class="style1">
                Nombre(s)</td>
            <td class="style2">
                <asp:TextBox ID="txtnombre" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Apellido paterno</td>
            <td class="style2">
                <asp:TextBox ID="txtapaterno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Apellido materno</td>
            <td class="style2">
                <asp:TextBox ID="txtamaterno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                E-mail</td>
            <td class="style2">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="style1">
                Fecha de nacimiento Ejemplo(0000-12-31)
            </td>
            <td class="style2">
                <asp:TextBox ID="txtnacimiento" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtnacimiento" 
                    ErrorMessage="La fecha debe  estar en el formato que se indica" ForeColor="Red" 
                    ValidationExpression="^(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Sexo</td>
            <td class="style2">
                <asp:RadioButtonList ID="Radiosexo" runat="server">
                    <asp:ListItem Selected="True">Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
        <td>Estado Civil</td>
        <td class="style2">
            <asp:DropDownList ID="listaedocivil" runat="server">
                <asp:ListItem>-Selecciona-</asp:ListItem>
                <asp:ListItem>Casado</asp:ListItem>
                <asp:ListItem>Soltero</asp:ListItem>
                <asp:ListItem>Divorciado</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>
        <tr><td class="style3">RFC</td><td class="style4">
            <asp:TextBox ID="txtrfc" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="txtrfc" ErrorMessage="RFC invalida" ForeColor="Red" 
                ValidationExpression="^[A-Z]{3,4}[0-9]{6}[0-9A-Z]{3}$"></asp:RegularExpressionValidator>
            </td></tr>
            <tr><td>Lugar de nacimiento</td><td class="style2">
                <asp:TextBox ID="txtlugarnac" runat="server"></asp:TextBox>
                </td></tr>
                <tr><td>CURP</td><td class="style2">
                    <asp:TextBox ID="txtcurp" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtcurp" ErrorMessage="CURP incorrecta" ForeColor="Red" 
                        
                        ValidationExpression="^[a-zA-Z]{4}\d{6}[hHmM](AS|BC|BS|CC|CS|CH|CL|CM|DF|DG|GT|GR|HG|JC|MC|MN|MS|NT|NL|OC|PL|QT|QR|SP|SL|SR|TC|TS|TL|VZ|YN|ZS|NE|as|bc|bs|cc|cs|ch|cl|cm|df|dg|gt|gr|hg|jc|mc|mn|ms|nt|nl|oc|pl|qt|qr|sp|sl|sr|tc|ts|tl|vz|yn|zs|ne)[a-zA-Z]{3}([a-zA-Z]\d|\d{2})$"></asp:RegularExpressionValidator>
                    </td></tr>
        <tr>
            <td colspan="2" style="color: #0000FF" align="center">
                &nbsp;&nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="color: #0000FF" align="center">
                Información de tu domicilio
                <br />
            </td>
        </tr>
        <tr>
            <td class="style1">
                Dirección</td>
            <td class="style2">
                <asp:TextBox ID="txtdireccion" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr><td>Colonia/Fraccionamiento</td><td class="style2">
            <asp:TextBox ID="txtcolonia" runat="server" Width="157px"></asp:TextBox>
            </td></tr>
            <tr><td>Codigo Postal</td><td class="style2">
                <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
                </td></tr>
        <tr>
            <td class="style1">
                Ciudad donde vive
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
        <tr>
            <td colspan="2" style="color: #0000FF" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="color: #0000FF" align="center">
                Información de tu Formación
                <br />
            </td>
        </tr>
        <tr>
            <td class="style1">
                Carrera</td>
            <td class="style2">
                <asp:DropDownList ID="listaCarrera" runat="server">
                    <asp:ListItem Selected="True">ISC</asp:ListItem>
                    
                    <asp:ListItem>Lic. Informática</asp:ListItem>
                    <asp:ListItem>Ing. Informática</asp:ListItem>
                    <asp:ListItem>Lic. Administración</asp:ListItem>
                    <asp:ListItem>Arquitectura</asp:ListItem>
                    <asp:ListItem>Ing. Industrial</asp:ListItem>
                    <asp:ListItem>Ing. Gestión Empresarial</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Matricula</td>
            <td class="style2">
                <asp:TextBox ID="txtMatricula" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr><td>Fecha de Ingreso</td><td class="style2">
            <asp:DropDownList ID="listaFechaIng" runat="server" style="margin-left: 0px">
                <asp:ListItem>- Periodo -</asp:ListItem>
                <asp:ListItem>Enero - Junio</asp:ListItem>
                <asp:ListItem>Agosto - Diciembre</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="listaAñoIng" runat="server">
                <asp:ListItem>- Año -</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
            </asp:DropDownList>
        </td>
        </tr>
        <tr>
            <td class="style1">
                Fecha de egreso
            </td>
            <td class="style2">
                <asp:DropDownList ID="listaMesEg" runat="server">
                    <asp:ListItem Selected="True">Mes</asp:ListItem>
                    <asp:ListItem>Enero</asp:ListItem>
                    <asp:ListItem>Febrero</asp:ListItem>
                    <asp:ListItem>Marzo</asp:ListItem>
                    <asp:ListItem>Abril</asp:ListItem>
                    <asp:ListItem>Mayo</asp:ListItem>
                    <asp:ListItem>Junio</asp:ListItem>
                    <asp:ListItem>Julio</asp:ListItem>
                    <asp:ListItem>Agosto</asp:ListItem>
                    <asp:ListItem>Septiembre</asp:ListItem>
                    <asp:ListItem>Octubre</asp:ListItem>
                    <asp:ListItem>Noviembre</asp:ListItem>
                    <asp:ListItem>Diciembre</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="listaAñoEg" runat="server">
                    <asp:ListItem Selected="True">Año</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Titulado
            </td>
            <td class="style2">
                <asp:RadioButtonList ID="Radiotitulado" runat="server">
                    <asp:ListItem Selected="True">Si</asp:ListItem>
                    <asp:ListItem>Pasante</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                Opción de Titulación (Si aplica)
            </td>
            <td class="style2">
                <asp:TextBox ID="txtopctitulo" runat="server" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Fecha de Titulación (Si aplica)
            </td>
            <td class="style2">
                <asp:TextBox ID="txtFechaTitulacion" runat="server" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Cedula Profesional (Si tiene)
            </td>
            <td class="style2">
                <asp:TextBox ID="txtCedula" runat="server" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Otros Estudios
            </td>
            <td class="style2">
                <asp:DropDownList ID="listaOtrosEst" runat="server">
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem Selected="True">No</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Maestría (Si tiene)
            </td>
            <td class="style2">
                <asp:TextBox ID="txtmaestria" runat="server" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Especialización
            </td>
            <td class="style2">
                <asp:TextBox ID="txtEspecialidad" runat="server" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Otros
            </td>
            <td class="style2">
                <textarea id="textAreaOtrosEstudios" runat=server name="S1" rows="2" cols="20"></textarea></td>
        </tr>
        <tr>
            <td>
                Servicio Social
            </td>
            <td class="style2">
                <asp:DropDownList ID="listaServicioSocial" runat="server">
                    <asp:ListItem>- Seleccione -</asp:ListItem>
                    <asp:ListItem>Liberado</asp:ListItem>
                    <asp:ListItem>No liberado</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                ¿Por qué no lo ha realizado?<br />
                (Si aplica)
            </td>
            <td class="style2">
                <textarea id="textAreaPorqueNoServicio" runat=server cols="20" name="S2" rows="2"></textarea></td>
        </tr>
        <tr>
            <td>
                Lugar donde lo realizo (Si aplica)
            </td>
            <td class="style2">
                <asp:TextBox ID="txtDondeServicio" runat="server" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                ¿Cómo consiguio sus residencias?
            </td>
            <td class="style2">
                <asp:DropDownList ID="listaComoConsiguioRes" runat="server">
                    <asp:ListItem>- Seleccione -</asp:ListItem>
                    <asp:ListItem>Aviso en la escuela</asp:ListItem>
                    <asp:ListItem>Aviso periodico</asp:ListItem>
                    <asp:ListItem>Acudio directamente a la empresa</asp:ListItem>
                    <asp:ListItem>Llamada de la empresa</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Otra manera
            </td>
            <td class="style2">
                <textarea id="textAreaOtraFormares" runat=server cols="20" name="S3" rows="2"></textarea></td>
        </tr>
        <tr>
            <td class="style1">
                Inglés
            </td>
            <td class="style2">
                <asp:DropDownList ID="listaIngles" runat="server">
                    <asp:ListItem>Seleccione</asp:ListItem>
                    <asp:ListItem>Basico</asp:ListItem>
                    <asp:ListItem>Intermedio</asp:ListItem>
                    <asp:ListItem>Avanzado</asp:ListItem>
                    <asp:ListItem>Nulo</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="color: #0000FF" align="center">
                Información Laboral
            </td>
        </tr>
        <tr>
            <td class="style1">
                ¿Esta Trabajando?
            </td>
            <td class="style2">
                <asp:RadioButtonList ID="RadioEstaTrabajando" runat="server" 
                    >
                    <asp:ListItem Selected="True">Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Nombre de la empresa
            </td>
            <td class="style2">
                <asp:TextBox ID="txtNombreEmpresa" runat="server" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Sueldo
            </td>
            <td class="style2">
                <asp:DropDownList ID="listaSueldoActual" runat="server">
                    <asp:ListItem>Seleccione</asp:ListItem>
                    <asp:ListItem>-$5,000</asp:ListItem>
                    <asp:ListItem>$5,000-$10,000</asp:ListItem>
                    <asp:ListItem>$10,001-$15,000</asp:ListItem>
                    <asp:ListItem>+$15,001</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Puesto
            </td>
            <td class="style2">
                <asp:TextBox ID="txtPuesto" runat="server" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Antigüedad
            </td>
            <td>
                <asp:TextBox ID="txtAntiguedad" runat="server" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr><td>Teléfono</td><td>
            <asp:TextBox ID="txtTelefonoEmpresa" runat="server" Width="211px"></asp:TextBox>
            </td></tr>
            <tr><td>Fax</td><td><asp:TextBox ID="txtFax" runat="server" Width="211px"></asp:TextBox></td></tr>
            <tr><td>Ciudad</td><td><asp:TextBox ID="txtCiudadTrabajo" runat="server" Width="211px"></asp:TextBox></td></tr>
            <tr><td>Estado</td><td><asp:TextBox ID="txtEstadoTrabajo" runat="server" Width="211px"></asp:TextBox></td></tr>
            <tr><td>Correo Electrónico</td><td><asp:TextBox ID="txtCorreoTrabajo" runat="server" Width="211px"></asp:TextBox></td></tr>
            <tr><td>Empleo Anterior</td><td><asp:TextBox ID="txtEmpleoAnterior" runat="server" Width="211px"></asp:TextBox></td></tr>
            <tr><td>Puesto</td><td><asp:TextBox ID="txtPuestoAnterior" runat="server" Width="211px"></asp:TextBox></td></tr>
            <tr><td>Antigüedad</td><td><asp:TextBox ID="txtAntiguedadAnterior" runat="server" Width="211px"></asp:TextBox></td></tr>
            <tr><td>Sueldo</td><td><asp:TextBox ID="txtSueldoAnterior" runat="server" Width="211px"></asp:TextBox></td></tr>
        <tr>
            <td class="style1">
                ¿Te gustaría que incluyamos tus datos en la bolsa de trabajo del ITCH II?
            </td>
            <td class="style2">
            <asp:RadioButtonList ID="radioParticipa" runat="server">
                    <asp:ListItem Selected="True">Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td colspan=2>
     &nbsp;</td></tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Actualizar" 
                    onclick="Button1_Click"  />
            </td>
        </tr>
    </table>

</asp:Content>
