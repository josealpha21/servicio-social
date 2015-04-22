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
    String path = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Logged"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        Button2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        // Specify the path on the server to
        // save the uploaded file to.
        //string savePath = @"c:\subidas\";
        string savePath = System.Web.HttpContext.Current.Server.MapPath("~/subidas/");

        // Before attempting to save the file, verify
        // that the FileUpload control contains a file.
        if (FileUpload1.HasFile)
        {
            // Get the size in bytes of the file to upload.
            int fileSize = FileUpload1.PostedFile.ContentLength;

            // Allow only files less than 2,100,000 bytes (approximately 2 MB) to be uploaded.
            if (fileSize <= 2100000)
            {
                String fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                String[] allowedExtensions = { ".pdf", ".docx", ".jpg", ".doc" };
                bool fileExtensionOk = false;

                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileExtensionOk = true;
                        break;
                    }
                }

                if (fileExtensionOk)
                {
                    // Append the name of the uploaded file to the path.
                    savePath += Server.HtmlEncode(FileUpload1.FileName);
                    path = savePath;
                    // Call the SaveAs method to save the 
                    // uploaded file to the specified path.
                    // This example does not perform all
                    // the necessary error checking.               
                    // If a file with the same name
                    // already exists in the specified path,  
                    // the uploaded file overwrites it.
                    FileUpload1.SaveAs(savePath);

                    // Notify the user that the file was uploaded successfully.
                    EnviarCorreo();
                    UploadStatusLabel.Text = "Tu archivo ha sido enviado exitosamente.";
                    FileUpload1.Visible = false;
                    Button1.Visible = false;
                    Button2.Visible = true;
                }
                else
                {

                    UploadStatusLabel.Text = "La extensión del archivo es inválida.";
                }
            }//filesize
            else
            {

                // Notify the user why their file was not uploaded.
                UploadStatusLabel.Text = "Tu archivo no se puedo enviar porque supera los 2 Mb de tamaño.";

            }
        }
        else
        {
            // Notify the user that a file was not uploaded.
            UploadStatusLabel.Text = "No especificaste un archivo para subir.";
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    public void EnviarCorreo()
    {
        /*-------------------------MENSAJE DE CORREO----------------------*/

        //Creamos un nuevo Objeto de mensaje
        System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();

        //Direccion de correo electronico a la que queremos enviar el mensaje
        mmsg.To.Add("egresadositchii@gmail.com");

        //Nota: La propiedad To es una colección que permite enviar el mensaje a más de un destinatario

        //Asunto
        mmsg.Subject = "Curriculum " + Session["logged"];
        mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

        //Direccion de correo electronico que queremos que reciba una copia del mensaje
        //mmsg.Bcc.Add("fayjo8@hotmail.com"); //Opcional

        //Cuerpo del Mensaje
        mmsg.Body = "Se ha recibido un nuevo curriculum verifique el archivo adjunto";
        mmsg.BodyEncoding = System.Text.Encoding.UTF8;
        mmsg.IsBodyHtml = false; //Si no queremos que se envíe como HTML

        // Crear el archivo adjunto para el mensaje 
        Attachment data = new Attachment(path, MediaTypeNames.Application.Octet);

        // Añadir el adjunto al mensaje 
        mmsg.Attachments.Add(data);

        //Correo electronico desde la que enviamos el mensaje
        mmsg.From = new System.Net.Mail.MailAddress("enviocurriculumitchii@gmail.com");


        /*-------------------------CLIENTE DE CORREO----------------------*/

        //Creamos un objeto de cliente de correo
        System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();

        //Hay que crear las credenciales del correo emisor
        cliente.Credentials =
            new System.Net.NetworkCredential("enviocurriculumitchii@gmail.com", "egritchii2015ropadegeyvi");

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