<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Registro.aspx.cs" Inherits="About" %>

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
                Contraseña*</td>
            <td class="style2">
                <asp:TextBox ID="txtcontra" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Fecha de nacimiento* Ejemplo(0000-12-31)
            </td>
            <td class="style2">
                <asp:TextBox ID="txtnacimiento" runat="server"></asp:TextBox>
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
        <tr>
        <td>Estado Civil*</td>
        <td class="style2">
            <asp:DropDownList ID="listaedocivil" runat="server">
                <asp:ListItem>-Selecciona-</asp:ListItem>
                <asp:ListItem>Casado</asp:ListItem>
                <asp:ListItem>Soltero</asp:ListItem>
                <asp:ListItem>Divorciado</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="listaedocivil" ErrorMessage="Campo vacio" ForeColor="Red" 
                InitialValue="-Selecciona-" SetFocusOnError="True">Campo vacio</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td>RFC</td><td class="style2">
            <asp:TextBox ID="txtrfc" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="txtrfc" ErrorMessage="RFC invalida" ForeColor="Red" 
                ValidationExpression="^[A-Z]{3,4}[0-9]{6}[0-9A-Z]{3}$"></asp:RegularExpressionValidator>
            </td></tr>
            <tr><td>Lugar de nacimiento*</td><td class="style2">
                <asp:TextBox ID="txtlugarnac" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtlugarnac" ErrorMessage="Campo Vacio" ForeColor="Red"></asp:RequiredFieldValidator>
                </td></tr>
                <tr><td>CURP*</td><td class="style2">
                    <asp:TextBox ID="txtcurp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtcurp" ErrorMessage="Campo Vacio" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td></tr>
                    <tr><td></td><td class="style2"></td></tr>
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
                Dirección (calle y numero)*</td>
            <td class="style2">
                <asp:TextBox ID="txtdireccion" runat="server" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtdireccion" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td>Colonia/Fraccionamiento*</td><td class="style2">
            <asp:TextBox ID="txtcolonia" runat="server" Width="157px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="txtcolonia" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td></tr>
            <tr><td>Codigo Postal*</td><td class="style2">
                <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtCP" ErrorMessage="Codigo Postal Invalido" ForeColor="Red" 
                    SetFocusOnError="True" ValidationExpression="^[0-9]{5}$"></asp:RegularExpressionValidator>
                </td></tr>
        <tr>
            <td class="style1">
                Ciudad donde vive*
            </td>
            <td class="style2">
                <asp:TextBox ID="txtciudad" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtciudad" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Estado*</td>
            <td class="style2">
                <asp:TextBox ID="txtestado" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtestado" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style1">
                Teléfono celular*
            </td>
            <td class="style2">
                <asp:TextBox ID="txtcel" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtcel" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Teléfono Fijo*
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
                Carrera*</td>
            <td class="style2">
                <asp:DropDownList ID="listaCarrera" runat="server">
                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                    <asp:ListItem>ISC</asp:ListItem>
                    
                    <asp:ListItem>Lic. Informática</asp:ListItem>
                    <asp:ListItem>Ing. Informática</asp:ListItem>
                    <asp:ListItem>Lic. Administración</asp:ListItem>
                    <asp:ListItem>Arquitectura</asp:ListItem>
                    <asp:ListItem>Ing. Industrial</asp:ListItem>
                    <asp:ListItem>Ing. Gestión Empresarial</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="listaCarrera" ErrorMessage="Ingrese algo" ForeColor="Red" 
                    InitialValue="Seleccione"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Matricula*</td>
            <td class="style2">
                <asp:TextBox ID="txtMatricula" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtMatricula" ErrorMessage="Matricula Invalida" 
                    ForeColor="Red" ValidationExpression="^[0-9]{8}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtMatricula" ErrorMessage="Ingrese algo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td>Fecha de Ingreso*</td><td class="style2">
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="listaFechaIng" ErrorMessage="Seleccione periodo" 
                ForeColor="Red" InitialValue="- Periodo -"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                ControlToValidate="listaAñoIng" ErrorMessage="Seleccione año" ForeColor="Red" 
                InitialValue="- Año -"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
            <td class="style1">
                Fecha de egreso*
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="listaMesEg" ErrorMessage="Seleccione mes" ForeColor="Red" 
                    InitialValue="Mes"></asp:RequiredFieldValidator>
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
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                    ControlToValidate="listaAñoEg" ErrorMessage="Seleccione año" ForeColor="Red" 
                    InitialValue="Año"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Titulado*
            </td>
            <td class="style2">
                <asp:RadioButtonList ID="Radiotitulado" runat="server">
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>Pasante</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="Radiotitulado" ErrorMessage="Seleccione una opción" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
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
                Otros Estudios*
            </td>
            <td class="style2">
                <asp:DropDownList ID="listaOtrosEst" runat="server">
                    <asp:ListItem>- Seleccione -</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                    ControlToValidate="listaOtrosEst" ErrorMessage="Seleccione algo" 
                    ForeColor="Red" InitialValue="- Seleccione -"></asp:RequiredFieldValidator>
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
                <textarea id="textAreaOtrosEstudios" runat=server name="S1" rows="2"></textarea></td>
        </tr>
        <tr>
            <td>
                Servicio Social*
            </td>
            <td class="style2">
                <asp:DropDownList ID="listaServicioSocial" runat="server" Height="16px" 
                    Width="98px">
                    <asp:ListItem>- Seleccione -</asp:ListItem>
                    <asp:ListItem>Liberado</asp:ListItem>
                    <asp:ListItem>No liberado</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                    ControlToValidate="listaServicioSocial" ErrorMessage="Seleccione algo" 
                    ForeColor="Red" InitialValue="- Seleccione -"></asp:RequiredFieldValidator>
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
                ¿Cómo consiguio sus residencias?*
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
                Inglés*
            </td>
            <td class="style2">
                <asp:DropDownList ID="listaIngles" runat="server">
                    <asp:ListItem>Seleccione</asp:ListItem>
                    <asp:ListItem>Basico</asp:ListItem>
                    <asp:ListItem>Intermedio</asp:ListItem>
                    <asp:ListItem>Avanzado</asp:ListItem>
                    <asp:ListItem>Nulo</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                    ControlToValidate="listaIngles" ErrorMessage="Seleccione algo" ForeColor="Red" 
                    InitialValue="Seleccione"></asp:RequiredFieldValidator>
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
                ¿Esta Trabajando?*
            </td>
            <td class="style2">
                <asp:RadioButtonList ID="RadioEstaTrabajando" runat="server" 
                    >
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                    ControlToValidate="RadioEstaTrabajando" ErrorMessage="Seleccione algo" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
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
                ¿Te gustaría que incluyamos tus datos en la bolsa de trabajo del ITCH II?*
            </td>
            <td class="style2">
            <asp:RadioButtonList ID="radioParticipa" runat="server">
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                    ControlToValidate="radioParticipa" ErrorMessage="Seleccione algo" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
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
