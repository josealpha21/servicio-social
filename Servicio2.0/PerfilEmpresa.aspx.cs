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

        if (Session["Tiporeg"] == "Empresa")
        {
            string usuario = Session["Correoempresa"].ToString();
            DataTable josele2 = ConSQL.Consulta(Consultas.queryperfilempresa, true, new object[] { usuario });
            GridViewperfil.DataSource = josele2;
            GridViewperfil.DataBind();
            //GridViewperfil.Visible = false;


            txtnombre.Text = GridViewperfil.Rows[0].Cells[0].Text;
            txtapaterno.Text = GridViewperfil.Rows[0].Cells[1].Text;
            txtamaterno.Text = GridViewperfil.Rows[0].Cells[2].Text;
            txtemail.Text = GridViewperfil.Rows[0].Cells[3].Text;
            txtnacimiento.Text = GridViewperfil.Rows[0].Cells[5].Text;
            Radiosexo.SelectedValue = GridViewperfil.Rows[0].Cells[6].Text;
            txtPuesto.Text = GridViewperfil.Rows[0].Cells[7].Text;
            txtempresa.Text = GridViewperfil.Rows[0].Cells[8].Text;
            txtRamo.Text = GridViewperfil.Rows[0].Cells[9].Text;
            txtDireccion.Text = GridViewperfil.Rows[0].Cells[10].Text;
            txtciudad.Text = GridViewperfil.Rows[0].Cells[11].Text;
            txtestado.Text = GridViewperfil.Rows[0].Cells[12].Text;
            txtcel.Text = GridViewperfil.Rows[0].Cells[13].Text;
            txtfijo.Text = GridViewperfil.Rows[0].Cells[14].Text;
            RFC.Text = GridViewperfil.Rows[0].Cells[15].Text;

        }
        else {
            Response.Redirect("~/Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
