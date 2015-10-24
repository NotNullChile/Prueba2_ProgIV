using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class UsuariosNegocio
    {
        Datos.ClubExceptionTableAdapters.usuariosTableAdapter usuario;

        public UsuariosNegocio()
        {
            usuario = new Datos.ClubExceptionTableAdapters.usuariosTableAdapter();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]

        public DataTable consultaMantenedor(int rutUsuario, string clave)
        {
            return  usuario.consultaMantenedor(rutUsuario, clave);            
        }

    }
}
