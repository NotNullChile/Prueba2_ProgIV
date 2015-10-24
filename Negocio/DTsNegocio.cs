using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class DTsNegocio
    {
        Datos.ClubExceptionTableAdapters.DTsTableAdapter dts;

        public DTsNegocio()
        {
            dts = new Datos.ClubExceptionTableAdapters.DTsTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public ClubException.DTsDataTable mostrarDTs()
        {
            return dts.GetData(); 
        }
    }
}
