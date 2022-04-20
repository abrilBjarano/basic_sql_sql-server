using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace webLibrary
{
    public class clsFunctions
    {
        public DataTable LeerLibros()
        {
            SqlConnection conexion = new SqlConnection();
            conexion = new clsConnection().Connect();
            using (conexion)
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("LeerLibros"))
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