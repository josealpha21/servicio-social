using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class About : System.Web.UI.Page
{
 
    protected void Page_Load(object sender, EventArgs e)
    {
                if (!IsPostBack)
        {
            if (Session["Tiporeg"] == "Egresado")
            {

                string usuario = Session["Matricula"].ToString();
                DataTable josele2 = ConSQL.Consulta(Consultas.queryPrueba3, true, new object[] { usuario });
                GridViewperfil.DataSource = josele2;
                GridViewperfil.DataBind();
                GridViewperfil.Visible = false;

                txtMatricula.Text = GridViewperfil.Rows[0].Cells[0].Text;
                txtnombre.Text = GridViewperfil.Rows[0].Cells[1].Text;
                txtapaterno.Text = GridViewperfil.Rows[0].Cells[2].Text;
                txtamaterno.Text = GridViewperfil.Rows[0].Cells[3].Text;
                txtemail.Text = GridViewperfil.Rows[0].Cells[4].Text;
                if (GridViewperfil.Rows[0].Cells[5].Text.Equals("&nbsp;"))
                {
                    txtnacimiento.Text = null;
                }
                else
                {
                    txtnacimiento.Text = GridViewperfil.Rows[0].Cells[5].Text;
                }
                Radiosexo.SelectedItem.Value = GridViewperfil.Rows[0].Cells[6].Text;

                if (GridViewperfil.Rows[0].Cells[7].Text.Equals("&nbsp;"))
                {
                    txtdireccion.Text = null;
                }
                else
                {
                    txtdireccion.Text = GridViewperfil.Rows[0].Cells[7].Text;
                }

                listaedocivil.SelectedValue = GridViewperfil.Rows[0].Cells[9].Text;
                if (GridViewperfil.Rows[0].Cells[10].Text.Equals("&nbsp;"))
                {
                    txtrfc.Text = null;
                }
                else
                {
                    txtrfc.Text = GridViewperfil.Rows[0].Cells[10].Text;
                }
                if (GridViewperfil.Rows[0].Cells[11].Text.Equals("&nbsp;"))
                {
                    txtnacimiento.Text = null;
                }
                else
                {
                    txtlugarnac.Text = GridViewperfil.Rows[0].Cells[11].Text;
                }
                if (GridViewperfil.Rows[0].Cells[12].Text.Equals("&nbsp;"))
                {
                    txtcurp.Text = null;
                }
                else
                {
                    txtcurp.Text = GridViewperfil.Rows[0].Cells[12].Text;
                }
                if (GridViewperfil.Rows[0].Cells[13].Text.Equals("&nbsp;")) 
                {
                    txtcolonia.Text = null;

                }
                else 
                txtcolonia.Text = GridViewperfil.Rows[0].Cells[13].Text;
                if (GridViewperfil.Rows[0].Cells[14].Text.Equals("&nbsp;"))
                {
                    txtCP.Text = null;
                }
                else 
                txtCP.Text = GridViewperfil.Rows[0].Cells[14].Text;

                if (GridViewperfil.Rows[0].Cells[15].Text.Equals("&nbsp;"))
                {
                    txtciudad.Text = null;
                }
                else
                {
                    txtciudad.Text = GridViewperfil.Rows[0].Cells[15].Text;
                }
                if (GridViewperfil.Rows[0].Cells[16].Text.Equals("&nbsp;"))
                {
                    txtestado.Text = null;
                }
                else
                {
                    txtestado.Text = GridViewperfil.Rows[0].Cells[16].Text;
                }
                if (GridViewperfil.Rows[0].Cells[17].Text.Equals("&nbsp;"))
                {
                    txtcel.Text = null;
                }
                else
                {
                    txtcel.Text = GridViewperfil.Rows[0].Cells[17].Text;
                }
                if (GridViewperfil.Rows[0].Cells[18].Text.Equals("&nbsp;"))
                {
                    txtfijo.Text = null;
                }
                else
                {
                    txtfijo.Text = GridViewperfil.Rows[0].Cells[18].Text;
                }
                listaCarrera.SelectedValue = GridViewperfil.Rows[0].Cells[19].Text;

                String dividir = GridViewperfil.Rows[0].Cells[20].Text;
                listaFechaIng.SelectedValue = dividir.Remove(dividir.Length - 5);
                listaAñoIng.SelectedValue = dividir.Substring(dividir.Length - 4);

                String dividir2 = GridViewperfil.Rows[0].Cells[21].Text;
                listaMesEg.SelectedValue = dividir2.Remove(dividir2.Length - 5);
                listaAñoEg.SelectedValue = dividir2.Substring(dividir2.Length - 4);

                Radiotitulado.SelectedValue = GridViewperfil.Rows[0].Cells[22].Text;

                if (GridViewperfil.Rows[0].Cells[23].Text.Equals("&nbsp;"))
                {
                    txtopctitulo.Text = null;
                }
                else
                {
                    txtopctitulo.Text = GridViewperfil.Rows[0].Cells[23].Text;
                }

                if (GridViewperfil.Rows[0].Cells[24].Text.Equals("&nbsp;"))
                {
                    txtFechaTitulacion.Text = null;
                }
                else
                {
                    txtFechaTitulacion.Text = GridViewperfil.Rows[0].Cells[24].Text;
                }

                if (GridViewperfil.Rows[0].Cells[25].Text.Equals("&nbsp;"))
                {
                    txtCedula.Text = null;
                }
                else
                {
                    txtCedula.Text = GridViewperfil.Rows[0].Cells[25].Text;
                }
                listaOtrosEst.SelectedValue = GridViewperfil.Rows[0].Cells[26].Text;

                if (GridViewperfil.Rows[0].Cells[27].Text.Equals("&nbsp;"))
                {
                    txtmaestria.Text = null;
                }
                else
                {
                    txtmaestria.Text = GridViewperfil.Rows[0].Cells[27].Text;
                }


                if (GridViewperfil.Rows[0].Cells[28].Text.Equals("&nbsp;"))
                {
                    txtEspecialidad.Text = null;
                }
                else
                {
                    txtEspecialidad.Text = GridViewperfil.Rows[0].Cells[28].Text;
                }

                if (GridViewperfil.Rows[0].Cells[29].Text.Equals("&nbsp;"))
                {
                    textAreaOtrosEstudios.Value = null;
                }
                else
                {
                    textAreaOtrosEstudios.Value = GridViewperfil.Rows[0].Cells[29].Text;
                }


                listaServicioSocial.Text = GridViewperfil.Rows[0].Cells[30].Text;

                if (GridViewperfil.Rows[0].Cells[31].Text.Equals("&nbsp;"))
                {
                    textAreaPorqueNoServicio.Value = null;
                }
                else
                {
                    textAreaPorqueNoServicio.Value = GridViewperfil.Rows[0].Cells[31].Text;
                }

                if (GridViewperfil.Rows[0].Cells[32].Text.Equals("&nbsp;"))
                {
                    txtDondeServicio.Text = null;
                }
                else
                {
                    txtDondeServicio.Text = GridViewperfil.Rows[0].Cells[32].Text;
                }

                listaComoConsiguioRes.SelectedValue = GridViewperfil.Rows[0].Cells[33].Text;

                if (GridViewperfil.Rows[0].Cells[34].Text.Equals("&nbsp;"))
                {
                    textAreaOtraFormares.Value = null;
                }
                else
                {
                    textAreaOtraFormares.Value = GridViewperfil.Rows[0].Cells[34].Text;
                }
                listaIngles.SelectedValue = GridViewperfil.Rows[0].Cells[35].Text;
                RadioEstaTrabajando.SelectedValue = GridViewperfil.Rows[0].Cells[36].Text;
                if (GridViewperfil.Rows[0].Cells[37].Text.Equals("&nbsp;"))
                {
                    txtNombreEmpresa.Text = null;
                }
                else
                {
                    txtNombreEmpresa.Text = GridViewperfil.Rows[0].Cells[37].Text;
                }


                listaSueldoActual.SelectedValue = GridViewperfil.Rows[0].Cells[38].Text;
                if (GridViewperfil.Rows[0].Cells[39].Text.Equals("&nbsp;"))
                {
                    txtPuesto.Text = null;
                }
                else
                {
                    txtPuesto.Text = GridViewperfil.Rows[0].Cells[39].Text;
                }

                if (GridViewperfil.Rows[0].Cells[40].Text.Equals("&nbsp;"))
                {
                    txtAntiguedad.Text = null;
                }
                else
                {
                    txtAntiguedad.Text = GridViewperfil.Rows[0].Cells[40].Text;
                }

                if (GridViewperfil.Rows[0].Cells[41].Text.Equals("&nbsp;"))
                {
                    txtTelefonoEmpresa.Text = null;
                }
                else
                {
                    txtTelefonoEmpresa.Text = GridViewperfil.Rows[0].Cells[41].Text;
                }

                if (GridViewperfil.Rows[0].Cells[42].Text.Equals("&nbsp;"))
                {
                    txtFax.Text = null;
                }
                else
                {
                    txtFax.Text = GridViewperfil.Rows[0].Cells[42].Text;
                }

                if (GridViewperfil.Rows[0].Cells[43].Text.Equals("&nbsp;"))
                {
                    txtCiudadTrabajo.Text = null;
                }
                else
                {
                    txtCiudadTrabajo.Text = GridViewperfil.Rows[0].Cells[43].Text;
                }
                if (GridViewperfil.Rows[0].Cells[44].Text.Equals("&nbsp;"))
                {
                    txtEstadoTrabajo.Text = null;
                }
                else
                {
                    txtEstadoTrabajo.Text = GridViewperfil.Rows[0].Cells[44].Text;
                }
                if (GridViewperfil.Rows[0].Cells[45].Text.Equals("&nbsp;"))
                {
                    txtCorreoTrabajo.Text = null;
                }
                else
                {
                    txtCorreoTrabajo.Text = GridViewperfil.Rows[0].Cells[45].Text;
                }

                if (GridViewperfil.Rows[0].Cells[46].Text.Equals("&nbsp;"))
                {
                    txtEmpleoAnterior.Text = null;
                }
                else
                {
                    txtEmpleoAnterior.Text = GridViewperfil.Rows[0].Cells[46].Text;
                }

                if (GridViewperfil.Rows[0].Cells[47].Text.Equals("&nbsp;"))
                {
                    txtPuestoAnterior.Text = null;
                }
                else
                {
                    txtPuestoAnterior.Text = GridViewperfil.Rows[0].Cells[47].Text;
                }

                if (GridViewperfil.Rows[0].Cells[48].Text.Equals("&nbsp;"))
                {
                    txtAntiguedadAnterior.Text = null;
                }
                else
                    txtAntiguedadAnterior.Text = GridViewperfil.Rows[0].Cells[48].Text;
                if (GridViewperfil.Rows[0].Cells[49].Text.Equals("&nbsp;"))
                {
                    txtSueldoAnterior.Text = null;
                }
                else
                {
                    txtSueldoAnterior.Text = GridViewperfil.Rows[0].Cells[49].Text;
                }
                radioParticipa.SelectedValue = GridViewperfil.Rows[0].Cells[50].Text;

                // txtDondeServicio.Text = dividir;
                 
                
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        
           //ConSQL.Consulta(Consultas.actualizar, false, new object[] { txtlugarnac.Text, txtMatricula.Text });


           ConSQL.Consulta(Consultas.actualizar, false, new object[] { txtMatricula.Text, txtnombre.Text, txtapaterno.Text, txtamaterno.Text, //4
            txtemail.Text, txtnacimiento.Text, Radiosexo.SelectedItem.ToString(), txtdireccion.Text,  //5
            listaedocivil.SelectedItem.ToString(), txtrfc.Text, txtlugarnac.Text, txtcurp.Text.ToString().ToUpper(), txtcolonia.Text, txtCP.Text, //6
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

        


            Server.Transfer("~/default.aspx");
        }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }

    protected void txtcurp_TextChanged(object sender, EventArgs e)
    {
       string c=  txtcurp.Text.ToString().ToUpper();

       txtcurp.Text = c;
        
    }
}
   