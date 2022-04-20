using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data; // add this library and the ones below
using System.Data.SqlClient;
using System.Configuration;

namespace webLibreria
{
    public class clsFunciones
    {
        public DataTable LeerLibros() // create this DataTable method.
        {
            SqlConnection conexion = new SqlConnection();
            conexion = new clsConexion().Conectar();
            using (conexion)
            {
                try
                {
                    using(SqlCommand cmd = new SqlCommand("leerLibros"))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Connection = conexion;
                        DataTable dt = new DataTable();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        da.Fill(dt);
                        return dt;
                    }
                }
                catch (Exception ex)
                {
                    return null;
                }
                finally
                {
                    conexion.Close();
                    conexion.Dispose();
                }
            }
        }
    }
}