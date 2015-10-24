using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
namespace Negocio
{
    [System.ComponentModel.DataObject]
    public class Equipos
    {
        Datos.ClubExceptionTableAdapters.equiposTableAdapter equipo;

        public Equipos()
        {
            equipo = new Datos.ClubExceptionTableAdapters.equiposTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public int guardarEquipo(int idEquipo, string nombreEquipo, int idComuna, int rutDT, string division)
        {
            return equipo.Insert(idEquipo, nombreEquipo, idComuna, rutDT, 0, division);
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public ClubException.equiposDataTable mostrarEquipo()
        {
            return equipo.GetData();
        }
    }
}
