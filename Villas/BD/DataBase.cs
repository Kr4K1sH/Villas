using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Villas.BD
{
    
        class Database : IDisposable
        {
            /*IDisposable permite a los objetos liberar los recursos que tengan correctamente y de forma determinista. 
             * Si en el código anteriorprodujese una excepción se corre el riesgo de no liberar los recursos. 
             * En el mejor de los casos, esos recursos se liberarían
             * y en el peor de los casos nunca se liberarían.*/
            public SqlConnection Conexion { get; set; }

            public DataSet ExecuteReader(SqlCommand sqlCommand, String tabla)
            {

                DataSet dsTabla = new DataSet();
                try
                {
                    using (SqlDataAdapter adaptador = new SqlDataAdapter(sqlCommand))
                    {
                        sqlCommand.Connection = Conexion;
                        dsTabla = new DataSet();
                        adaptador.Fill(dsTabla, tabla);
                    }
                    return dsTabla;
                }
                catch (Exception ex)
                {
                    ex.Source += " SQL: " + sqlCommand.CommandText.ToString();
                    throw ex;
                }
                finally
                {

                    if (dsTabla != null)
                        dsTabla.Dispose();


                }



            }

            public int ExecuteNonQuery(SqlCommand sqlCommand)
            {

                int registrosafectados = 0;
                try
                {

                    sqlCommand.Connection = Conexion;

                    registrosafectados = sqlCommand.ExecuteNonQuery();

                    return registrosafectados;

                }
                catch (Exception ex)
                {
                    ex.Source += " SQL: " + sqlCommand.CommandText.ToString();
                    throw ex;
                }
            }


            #region IDisposable Members

            public void Dispose()
            {
                if (Conexion != null)
                    Conexion.Close();
            }

            #endregion
        }
    
}