using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;


public partial class _Default : System.Web.UI.Page
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Valida el usuario y contraseña 
        string user = txtUsuario.Value;

        string pass = txtcontra.Text;
        DataTable sesion, sesion2;

        sesion = ConSQL.Consulta(Consultas.queryLoginEmpresa, true, new object[] { user, pass });


        GridViewtriki.DataSource = sesion;
        GridViewtriki.DataBind();
        if (sesion.Rows.Count == 0)
        {
            //lblresultado.Text = "incorrecto";
            ScriptManager.RegisterStartupScript(Page, this.GetType(), "myscript2", "alert('Usuario o Contraseña Incorrecto');", true);

        }
        else
        {
            sesion2 = ConSQL.Consulta(Consultas.queryGetName, true, new object[] { user, pass });
            lblresultado.Text = "correcto";
            Session["Correoempresa"] = sesion.Rows[0][0].ToString();
            if (sesion.Rows[0][0].ToString() == "jose@gmail.com") //Correo de margarita 
            {
                Session["Logged"] = "admin";
                Session["Tiporeg"] = "Empresa";
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                Session["Logged"] = sesion2.Rows[0][0].ToString();
                Session["Tiporeg"] = "Empresa";

                Response.Redirect("~/Default.aspx");
            }

        }
    }
        //ConSQL.Consulta(Consultas.queryPrueba5, true, new object[] {  pass });




        /*string contraseña = sesion.Rows[0][0].ToString();
        if (!txtcontra.Equals(contraseña))
        {
            lblresultado.Text = "si hay un usuario y concuerda la contraseña";
        }
        else
        {
            lblresultado.Text = "si hay un usuario y no concuerda la contraseña";
        }*/
        //GridView1.DataSource = josele;
        //GridView1.DataBind();

    //if (true)
    //{
    //Session["Logged"] = txtusuario.Text;

    // Response.Redirect("~/Default.aspx");
    //}
    //else
    //{
    // ScriptManager.RegisterStartupScript(Page, this.GetType(), "myscript", "alert(Nooo);", true);

    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Logged"] != null)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}
