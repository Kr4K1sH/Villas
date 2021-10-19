using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Villas.BD
{
  class Villas
    {
        public int idVilla { get; set; }
        public string nombre { get;  set; }
        public string descripcion { get;  set; }
        public Villas()
        {
          
        }

        public static DataSet SeleccionarTodos()
        {
            Database db = DataBaseFactory.CreateDatabase("default");
            string sql = "Select * from villa";

            SqlCommand comando = new SqlCommand(sql);
            comando.CommandType = CommandType.Text;
            DataSet ds = db.ExecuteReader(comando, "villa");
            return ds;
        }
        public static  void Insertar(Villas vil)
        {
            Database db = DataBaseFactory.CreateDatabase("default");
            SqlCommand cmd = new SqlCommand("Insert into villa(nombre,descripcion) values(@nom,@des)");
            cmd.Parameters.AddWithValue("@nom",vil.nombre);
            cmd.Parameters.AddWithValue("@des",vil.descripcion);
            db.ExecuteNonQuery(cmd);
        }


    }
}