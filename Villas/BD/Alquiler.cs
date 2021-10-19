using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Villas.BD
{
    public class Alquiler
    {
        public int idAlquiler { get; set; }
        public string idCliente { get; set; }
        public string nombreCliente { get; set; }
        public DateTime fecha { get; set; }
        public int idVilla { get; set; }
        public int dias { get; set; }
        public int personas { get; set; }
        public double total { get; set; }


        public static DataSet SeleccionarTodos()
        {
            Database db = DataBaseFactory.CreateDatabase("default");
            string sql = @"SELECT  dbo.alquilerVilla.fecha, dbo.alquilerVilla.nombreCliente, dbo.villa.nombre AS nombrevilla, dbo.alquilerVilla.idCliente, 
                                   dbo.alquilerVilla.cantidadDias, dbo.alquilerVilla.cantidadPersonas,dbo.alquilerVilla.total
                          FROM    dbo.alquilerVilla INNER JOIN
                                  dbo.villa ON dbo.alquilerVilla.idVilla = dbo.Villa.idVilla";

            SqlCommand comando = new SqlCommand(sql);
            comando.CommandType = CommandType.Text;
            DataSet ds = db.ExecuteReader(comando, "alquilerVilla");
            return ds;
        }
        public static void Insertar(Alquiler al)
        {

            Database db = DataBaseFactory.CreateDatabase("default");
            SqlCommand cmd = new SqlCommand("INSERT INTO alquilerVilla (idCliente,nombreCliente,fecha,idVilla,cantidadDias,cantidadPersonas,total)VALUES(@idcliente, @nombreCliente, @fecha, @idVilla, @cantidadDias, @cantidadPersonas, @total)");
            cmd.Parameters.AddWithValue("@idcliente", al.idCliente);
            cmd.Parameters.AddWithValue("@nombreCliente", al.nombreCliente);
            cmd.Parameters.AddWithValue("@fecha", al.fecha);
            cmd.Parameters.AddWithValue("@idVilla", al.idVilla);
            cmd.Parameters.AddWithValue("@cantidadDias", al.dias);
            cmd.Parameters.AddWithValue("@cantidadPersonas", al.personas);
            cmd.Parameters.AddWithValue("@total", al.total);
            db.ExecuteNonQuery(cmd);

        }








    }
}