using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class ComunasNegocio
    {
        Datos.ClubExceptionTableAdapters.comunasTableAdapter comunas;

        public ComunasNegocio()
        {
            comunas = new Datos.ClubExceptionTableAdapters.comunasTableAdapter();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public ClubException.comunasDataTable mostrarComunas()
        {
            return comunas.GetData();
        }
    }
}
