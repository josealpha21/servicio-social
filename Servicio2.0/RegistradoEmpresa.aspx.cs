using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Mime;



public partial class Seleccionregistro : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Logged"] != null)
        {
            Response.Redirect("~/Default.aspx");
        }
        
    }

    


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    
}