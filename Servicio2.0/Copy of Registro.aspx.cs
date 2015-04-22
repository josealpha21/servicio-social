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
        if (Session["Logged"] != null)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string relleno = "";
            ConSQL.Consulta(Consultas.queryRegistroSimple, false, new object[] { txtMatricula.Text, txtnombre.Text, txtapaterno.Text, txtamaterno.Text, //4
            txtemail.Text, relleno,Radiosexo.SelectedItem.ToString(), relleno, txtcontra.Text, relleno, relleno, relleno, relleno, relleno, //8 relleno 
            relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno,//14
            relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno,//14 
            relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno, relleno//11
            
            });
            EnviarCorreo();
            //Server.Transfer("~/Registrado.aspx");
            Response.Redirect("~/Registrado.aspx");
        }
        catch (Exception)
        {
         
            
        }
        

    }
    public void EnviarCorreo()
    {
        /*-------------------------MENSAJE DE CORREO----------------------*/

        //Creamos un nuevo Objeto de mensaje
        System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();

        //Direccion de correo electronico a la que queremos enviar el mensaje
        mmsg.To.Add(txtemail.Text);

        //Nota: La propiedad To es una colección que permite enviar el mensaje a más de un destinatario

        //Asunto
        mmsg.Subject = "Registro en la pagina de egresados ITCH II";
        mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

        //Direccion de correo electronico que queremos que reciba una copia del mensaje
        

        //Cuerpo del Mensaje
        mmsg.Body = "Usted se ha registrado exitosamente en la pagina de egresados del ITCH II, por favor conserve este correo, su usuario es: " + txtMatricula.Text + ", y su contraseña: " + txtcontra.Text;
        mmsg.BodyEncoding = System.Text.Encoding.UTF8;
        mmsg.IsBodyHtml = false; //Si no queremos que se envíe como HTML



        //Correo electronico desde la que enviamos el mensaje
        mmsg.From = new System.Net.Mail.MailAddress("egresadositchii@gmail.com");


        /*-------------------------CLIENTE DE CORREO----------------------*/

        //Creamos un objeto de cliente de correo
        System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();

        //Hay que crear las credenciales del correo emisor
        cliente.Credentials =
            new System.Net.NetworkCredential("egresadositchii@gmail.com", "egritchii2015ropadegeyvi");

        //Lo siguiente es obligatorio si enviamos el mensaje desde Gmail

        cliente.Port = 587;
        cliente.EnableSsl = true;


        cliente.Host = "smtp.gmail.com"; //Para Gmail "smtp.gmail.com";


        /*-------------------------ENVIO DE CORREO----------------------*/

        try
        {
            //Enviamos el mensaje      
            cliente.Send(mmsg);
        }
        catch (System.Net.Mail.SmtpException ex)
        {
            //Aquí gestionamos los errores al intentar enviar el correo
        }
    }

}
