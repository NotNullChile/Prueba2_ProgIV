using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class Estadios
    {
        Datos.ClubExceptionTableAdapters.estadiosTableAdapter estadios;

        public Estadios()
        {
            estadios = new Datos.ClubExceptionTableAdapters.estadiosTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public ClubException.estadiosDataTable mostrarEstadios()
        {
            return estadios.GetData();
        }
    }
}
