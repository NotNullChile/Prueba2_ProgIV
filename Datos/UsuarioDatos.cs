using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace Datos
{
    class UsuarioDatos
    {
        private SqlConnection conexion;

        public UsuarioDatos()
        {
            conexion = new SqlConnection();
            conexion.ConnectionString = "Server=RICARDOPC\\SQLEXPRESS;Database=ClubException;Trusted_Connection=True;";
            conexion.Open();
        }
        
    }
}
