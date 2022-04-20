using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace webLibreria
{
    public class clsConexion
    {
        public SqlConnection Conectar() // main method SqlConnection type.
        {
            try
            {
                // declare a SqlConnection variable "cadenaConexion"
                SqlConnection cadenaConexion = new SqlConnection(ConfigurationManager.ConnectionStrings["Biblioteca"].ConnectionString);
                return cadenaConexion;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}