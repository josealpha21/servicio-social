using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Logged"] != null) {
            Response.Redirect("~/Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            ConSQL.Consulta(Consultas.queryPrueba2, false, new object[] { txtMatricula.Text, txtnombre.Text, txtapaterno.Text, txtamaterno.Text, //4
            txtemail.Text, txtnacimiento.Text, Radiosexo.SelectedItem.ToString(), txtdireccion.Text, txtcontra.Text, //5
            listaedocivil.SelectedItem.ToString(), txtrfc.Text, txtlugarnac.Text, txtcurp.Text, txtcolonia.Text, txtCP.Text, //6
            txtciudad.Text, txtestado.Text, txtcel.Text, txtfijo.Text, listaCarrera.SelectedItem.ToString(), //5
            listaFechaIng.SelectedItem.ToString() + " " + listaAñoIng.SelectedItem.ToString(), //1
            listaMesEg.SelectedItem.ToString() + " " + listaAñoEg.SelectedItem.ToString(), Radiotitulado.SelectedItem.ToString(),//2 
            txtopctitulo.Text, txtFechaTitulacion.Text, txtCedula.Text, listaOtrosEst.SelectedItem.ToString(), txtmaestria.Text, txtEspecialidad.Text, //5
            textAreaOtrosEstudios.Value, listaServicioSocial.SelectedItem.ToString(), textAreaPorqueNoServicio.Value, //3
            txtDondeServicio.Text, listaComoConsiguioRes.SelectedItem.ToString(), textAreaOtraFormares.Value, //3
            listaIngles.SelectedItem.ToString(), RadioEstaTrabajando.SelectedItem.ToString(), txtNombreEmpresa.Text, //3
            listaSueldoActual.SelectedItem.ToString(), txtPuesto.Text, txtAntiguedad.Text, txtTelefonoEmpresa.Text, txtFax.Text, //5
            txtCiudadTrabajo.Text, txtEstadoTrabajo.Text, txtCorreoTrabajo.Text, txtEmpleoAnterior.Text, txtPuestoAnterior.Text, //5
            txtAntiguedadAnterior.Text, txtSueldoAnterior.Text, radioParticipa.SelectedItem.ToString() });
                   
        Server.Transfer("~/Default.aspx");
        
    }

    
}
