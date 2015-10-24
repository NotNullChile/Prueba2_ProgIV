using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;
using System.Data.SqlClient;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class UsuariosNegocio
    {
        private int rut;
        private string clave;
        private int nombreUsuario;

        public int NombreUsuario
        {
            get { return nombreUsuario; }
            set { nombreUsuario = value; }
        }


        public string Clave
        {
            get { return clave; }
            set { clave = value; }
        }


        public int Rut
        {
            get { return rut; }
            set { rut = value; }
        }

    }
}
