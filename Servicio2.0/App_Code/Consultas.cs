using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*Clase donde almacenamos la string de la consulta*/

public static class Consultas
{
    public static string usuario ;
    
    //Consulta para obtener usuario y contraseña
    //public static string queryUserPass = "Select noControl from usuario where ((noControl = ?p1) & (NIP = ?p2))";
    public static string queryPrueba = "Select * from egresados ";
    public static string queryCSV = "SELECT matricula, carrera, nombre, apellidoPaterno, apellidoMaterno, correo, telefonofijo, telefonoCel, sexo, curp, fechaNacimiento, direccion, colonia, codigoPostal, ciudad, ciudad, estado, estado, direccion, lugardeprestacionss, fechaingreso,fechaingreso,fechaegreso,fechaegreso, titulado, ingles, ingles, otrosEstudios FROM egresados;";
    public static string queryPrueba2 = "Insert into egresados values(?p1, ?p2, ?p3, ?p4, ?p5, ?p6, ?p7, ?p8, ?p9, ?p10, ?p11, ?p12, ?p13, ?p14, ?p15, ?p16, ?p17, ?p18, ?p19, ?p20, ?p21, ?p22, ?p23, ?p24, ?p25, ?p26, ?p27, ?p28, ?p29, ?p30, ?p31, ?p32, ?p33, ?p34, ?p35, ?p36, ?p37, ?p38, ?p39, ?p40, ?p41, ?p42, ?p43, ?p44, ?p45, ?p46, ?p47, ?p48, ?p49, ?p50, ?p51)";
    //public static string queryRegistroSimple = "insert into corta values(?p1, ?p2, ?p3, ?p4, ?p5, ?p6, ?p7)";
    public static string queryRegistroSimple = "insert into egresados values(?p1, ?p2, ?p3, ?p4, ?p5, ?p6, ?p7, ?p8, ?p9, ?p10, ?p11, ?p12, ?p13, ?p14, ?p15, ?p16, ?p17, ?p18, ?p19, ?p20, ?p21, ?p22, ?p23, ?p24, ?p25, ?p26, ?p27, ?p28, ?p29, ?p30, ?p31, ?p32, ?p33, ?p34, ?p35, ?p36, ?p37, ?p38, ?p39, ?p40, ?p41, ?p42, ?p43, ?p44, ?p45, ?p46, ?p47, ?p48, ?p49, ?p50, ?p51)";
    public static string queryPrueba3 = "Select * from egresados where matricula = ?p1";
    public static string queryperfilempresa = "Select * from empresa where correo = ?p1";
    //public static string queryPrueba4 = "Select usuario from egresados where usuario = ?p1";
    public static string queryLoginUsuario = "Select matricula from egresados where matricula = ?p1 AND password = ?p2";
    public static string queryLoginUsuario2 = "Select matricula from corta where matricula = ?p1 AND password = ?p2";
    public static string queryLoginEmpresa = "Select correo from empresa where correo = ?p1 AND password = ?p2";
    public static string queryEmpresa = "Insert into empresa values(?p1, ?p2, ?p3, ?p4, ?p5, ?p6, ?p7, ?p8, ?p9, ?p10, ?p11, ?p12, ?p13, ?p14, ?p15, ?p16)";
    public static string queryGetName = "select nombreEmpresa from empresa where correo= ?p1 and password = ?p2";
    public static string queryGetEgresado = "Select nombre, apellidoPaterno from egresados where matricula = ?p1 AND password = ?p2";
    public static string actualizar = "update egresados set nombre = ?p2, apellidoPaterno = ?p3, apellidoMaterno= ?p4, correo= ?p5, fechanacimiento= ?p6, sexo =?p7,direccion= ?p8, estadoCivil=?p9, rfc=?p10, lugarnacimiento= ?p11, curp=?p12, colonia=?p13, codigoPostal=?p14,ciudad=?p15, estado=?p16, telefonoCel=?p17, telefonofijo=?p18, carrera= ?p19, fechaIngreso= ?p20, fechaEgreso=?p21, titulado=?p22, opcionTitulacion=?p23, fechaTitulacion= ?p24, cedulaProfesional=?p25, otrosEstudios=?p26, maestria=?p27, especializacion=?p28, otros=?p29, servicioSocial=?p30, motivodenohacerlo=?p31, lugardeprestacionSS=?p32, comoconsiguioresidencias=?p33, otramaneradeconseguirlas=?p34, ingles=?p35, trabaja=?p36, nombreEmpresa=?p37, sueldo=?p38, puestoActual=?p39, antiguedad=?p40,telefonoTrabajo=?p41, faxTrabajo=?p42, ciudadTrabajo=?p43, estadoDondeTrabaja=?p44, correoTrabajo=?p45, empleoAnterior=?p46, puestoAnterior=?p47, antiguedadAnterior=?p48, sueldoAnterior=?p49, participa=?p50 where matricula = ?p1";
    //public static string queryGetEgresado2 = "Select nombre, apellidoPaterno from corta where matricula = ?p1 AND password = ?p2";

    //Consulta para obtener los prestamos de un usuario en especifico
    //public static string queryPrestamos = "Select CAST(FechaInicio as char) as 'Fecha del prestamo', CAST(FechaFin as char) as 'Fecha limite', Nombre, Tipo, Genero, Editorial, Autor, idClasificacion as Clasificacion from usuario inner join prestamo on (usuario.noControl = prestamo.noControl) inner join prestamo_has_material on(prestamo.idPrestamo = prestamo_has_material.idPrestamo) inner join material on (prestamo_has_material.idMaterial = material.idMaterial) inner join autor on (material.idMaterial = autor.idMaterial) where ((prestamo.FechaEntrega is null) AND (usuario.noControl = ?p1)) order by prestamo.FechaEntrega asc;";

    //Consulta para obtener el historial de un usuario en especifico , ?p26, ?p27, ?p28, ?p29, ?p30, ?p31, ?p32, ?p33, ?p34, ?p35, ?p36, ?p37, ?p38, ?p39, ?p40, ?p41, ?p42, ?p43, ?p44, ?p45 ?p46, ?p47, ?p48, ?p49, ?p50, ?p51, ?p52
    //public static string queryHitorial = "Select CAST(FechaInicio as char) as 'Fecha del prestamo', CAST(FechaFin as char) as 'Fecha limite', CAST(FechaEntrega as char) as 'Fecha de entrega', Nombre, Tipo, Genero, Editorial, Autor, idClasificacion as Clasificacion from usuario inner join prestamo on (usuario.noControl = prestamo.noControl) inner join prestamo_has_material on(prestamo.idPrestamo = prestamo_has_material.idPrestamo) inner join material on (prestamo_has_material.idMaterial = material.idMaterial) inner join autor on ((material.idMaterial = autor.idMaterial) AND (not(FechaEntrega is null))) where (usuario.noControl = ?p1) order by prestamo.FechaEntrega desc;";
}