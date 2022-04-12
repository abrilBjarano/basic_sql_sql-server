using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql; // to create a 
using System.Configuration; // connection into SQL 

namespace webLibrary
{
    public class clsConnection
    {
        public SqlConnection Connect()
        {
            try
            {
                sqlConnection cadenaConexion = new sqlConnection(ConfigurationManager.ConnectionStrings["Biblioteca"].ConnectionString);
                return cadenaConexion;
            }
            catch (Exception ex)
            {
                return null;
            }
        } 
    }
}