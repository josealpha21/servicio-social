using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Data.SqlClient;
using System.Text;
using System.IO;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*DataTable josele = ConSQL.Consulta(Consultas.queryPrueba, true, new object[] {  });
        //ConSQL.Consulta(Consultas.queryPrueba2, false, new object[] { TextBox1.Text });
      */

        if (Session["Logged"] != null)
        {
            if (Session["Logged"].ToString().Equals("admin"))
            {
                Button1.Visible = true;
                Label1.Visible = true;
            }
            else
            {
                Button1.Visible = false;
                Label1.Visible = false;
                  
            }

        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = ConSQL.Consulta(Consultas.queryCSV, true, new object[] { });
        DataSet ds = new DataSet("table");
        ds.Tables.Add(dt);
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition",
            "attachment;filename=DataTable.csv");
        Response.Charset = "ISO-8859-1";
        Response.ContentType = "application/text";


        StringBuilder sb = new StringBuilder();
        //coloca los titulos de las columnas
        sb.Append("Número de control" + ',');
        sb.Append("Carrera" + ',');
        sb.Append("Nombre" + ',');
        sb.Append("Apellido paterno" + ',');
        sb.Append("Apellido materno" + ',');
        sb.Append("E-mail" + ',');
        sb.Append("Telefono" + ',');
        sb.Append("Telefono alternativo" + ',');
        sb.Append("Sexo" + ',');
        sb.Append("CURP" + ',');
        sb.Append("Fecha de nacimiento" + ',');
        sb.Append("Calle" + ',');
        sb.Append("Colonia" + ',');
        sb.Append("Código postal" + ',');
        sb.Append("Localidad" + ',');
        sb.Append("Municipio" + ',');
        sb.Append("Estado" + ',');
        sb.Append("País" + ',');
        sb.Append("Otra dirección" + ',');
        sb.Append("Instituto" + ',');
        sb.Append("Año de ingreso" + ',');
        sb.Append("Periodo de ingreso" + ',');
        sb.Append("Año de egreso" + ',');
        sb.Append("Periodo de egreso" + ',');
        sb.Append("Titulado" + ',');
        sb.Append("Dominio ingles %" + ',');
        sb.Append("Dominio otro %" + ',');
        sb.Append("Paquetes computacionales" + ',');

        //append new line
        sb.Append("\r\n");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            for (int k = 0; k < dt.Columns.Count; k++)
            {
                if (k == 18)
                {
                    sb.Append(" ,");
                }
                if (k == 19)
                {
                    sb.Append("ITCH II,");
                }
                if (k == 26)
                {
                    sb.Append(" ,");
                }
                if (k==27)
                    sb.Append(" ,");

                //add separator
                if (k == 17)
                {
                    sb.Append("México,");
                }
                else
                {
                    if (k == 0)
                    {
                        string m = dt.Rows[1][0].ToString();
                        if (m.StartsWith("0"))
                        {
                            m = "'" + m;
                            sb.Append(m + ",");
                        }
                        else
                        {
                            //sb.Append(dt.Rows[i][k].ToString().Replace(",", ";") + ',');
                            sb.Append(m + ",");
                                                    }

                    }
                    if (k != 0 && k!=18 && k!=19 && k!=26 && k!=27)
                    {
                        sb.Append(dt.Rows[i][k].ToString().Replace(",", ";") + ',');
                    }
                }
            }
            //append new line
            sb.Append("\r\n");

        }
        Response.Output.Write(sb.ToString());
        Response.Flush();
        Response.End();
    }


}

