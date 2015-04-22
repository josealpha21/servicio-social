using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;

/*Clase que realiza la conexión a la base de datos*/

public class ConSQL
{
    //Definimos la dirección de nuestro sevidor de base de datos, el usuario y la contraseña
    public static String conFull = "server=localhost;User Id=root;password=root;Persist Security Info=True;database=preba;Allow Zero Datetime=True;";
    public static String conReadOnly = "server=localhost;User Id=root;password=root;Persist Security Info=True;database=preba;Allow Zero Datetime=True;";

    /// <summary>
    /// Consultas a la base de datos.
    /// 
    /// Regresa un DataTable, se puede usar su propiedad DefaultView
    /// para ponerlo como ItemsSource, o se puede acceder a sus valores por medio
    /// de su propiedad Rows, la cual es un arreglo y se puede especificar la
    /// celda así: Rows[x][y].
    /// </summary>
    /// <param name="consulta">Consulta en SQL</param>
    /// <param name="readOnly">Para usar una cadena de conexión restringida a sólo lectura enviar TRUE</param>
    /// <returns>DataTable</returns>
    public static DataTable Consulta(String consulta, bool readOnly)
    {
        try
        {
            using(MySqlConnection cnx = new MySqlConnection(readOnly ? conReadOnly : conFull))
            {
                DataTable dt = new DataTable();
                MySqlCommand cmd = new MySqlCommand(consulta, cnx);
                MySqlDataAdapter ad = new MySqlDataAdapter(cmd);
                ad.Fill(dt);
                return dt;
            }
        }
        catch
        {
            throw new Exception("Error al hacer la consulta. Contacte al equipo de soporte técnico para resolver el problema.");
        }
    }

    /// <summary>
    /// Consultas a la base de datos con parámetros.
    /// 
    /// Regresa un DataTable, se puede usar su propiedad DefaultView
    /// para ponerlo como ItemsSource, o se puede acceder a sus valores por medio
    /// de su propiedad Rows, la cual es un arreglo y se puede especificar la
    /// celda así: Rows[x][y].
    /// Esta sobrecarga recibe un arreglo de parametros si es que se necesitan 
    /// incluir en la consulta. Asegurate que los parámetros tengan el nombe p1, 
    /// p2, p3, ... , pX.
    /// </summary>
    /// <param name="consulta">Consulta en SQL</param>
    /// <param name="readOnly">Para usar una cadena de conexión restringida a sólo lectura enviar TRUE</param>
    /// <param name="parametros">Arreglo de object para recibir parámetros de cualquier tipo, excepto imágenes</param>
    /// <returns>DataTable</returns>
    public static DataTable Consulta(String consulta, bool readOnly, object[] parametros)
    {
        try
        {
            using (MySqlConnection cnx = new MySqlConnection(readOnly ? conReadOnly : conFull))
            {
                DataTable dt = new DataTable();
                MySqlCommand cmd = new MySqlCommand(consulta, cnx);
                for (int c = 0; c < parametros.Length; c++)
                    cmd.Parameters.AddWithValue("?p" + (c + 1), parametros[c]);

                MySqlDataAdapter ad = new MySqlDataAdapter(cmd);
                ad.Fill(dt);
                return dt;
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message + " Error al hacer la consulta. Contacte al equipo de soporte técnico para resolver el problema.");
        }
    }
}