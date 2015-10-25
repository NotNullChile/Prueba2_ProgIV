using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class Posicion
    {
        Datos.ClubExceptionTableAdapters.posicionTableAdapter posicion;

        public Posicion()
        {
            posicion = new Datos.ClubExceptionTableAdapters.posicionTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public ClubException.posicionDataTable mostrarPosiciones()
        {
            return posicion.GetData();
        }
    }
}
