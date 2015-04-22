using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Logged"] == null)
        {
            lBtnLogout.Visible = false;
            lBtnLogin.Visible = true;
            lblUsuario.Visible = false;
            NavigationMenu.Items[1].Text = "Registro";
            NavigationMenu.Items[1].NavigateUrl = "~/Seleccionregistro.aspx";
        }
        else
        {
            lBtnLogout.Visible = true;
            lBtnLogin.Visible = false;
            lblUsuario.Visible = true;
            lblUsuario.Text = "Bienvenido, " + Session["Logged"].ToString();
            NavigationMenu.Items[0].ChildItems.RemoveAt(0);  
            if (Session["Tiporeg"]=="Egresado")
            {
                NavigationMenu.Items[1].Text = "Perfil";
                NavigationMenu.Items[1].NavigateUrl = "~/PerfilEgresado.aspx";
                NavigationMenu.Items[1].ChildItems.RemoveAt(0);
                NavigationMenu.Items[1].ChildItems.RemoveAt(0);              
               
                                         
            }
            else if(Session["Tiporeg"]=="Empresa") {
                NavigationMenu.Items[1].Text = "Perfil Empresa";
                NavigationMenu.Items[1].NavigateUrl = "~/Perfilempresa.aspx";
                NavigationMenu.Items[1].ChildItems.RemoveAt(0);
                NavigationMenu.Items[1].ChildItems.RemoveAt(0);   
            }
        }
    }
    
    protected void lBtnLogout_Click1(object sender, EventArgs e)
    {
        //String a="Se ha cerrado su sesion";
       //ScriptManager.RegisterStartupScript(this.lBtnLogout, this.GetType(), "hola", a, true);
        //Server.Transfer("~/Default.aspx");
        Session["Logged"] = null;
        Response.Redirect("~/seleccionInicio.aspx");
        
    }
}
