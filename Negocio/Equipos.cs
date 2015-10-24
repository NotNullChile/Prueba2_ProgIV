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
    public class Equipos
    {
        Datos.ClubExceptionTableAdapters.equiposTableAdapter equipoDatos;

        public Equipos()
        {
            equipoDatos = new Datos.ClubExceptionTableAdapters.equiposTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public int guardarEquipo(int idEquipo, string nombreEquipo, int idComuna, int rutDT, string division)
        {
            try
            {
                return equipoDatos.Insert(idEquipo, nombreEquipo, idComuna, rutDT, 0, division);
            }
            catch (SqlException e)
            {
                return e.Number;
                
            }
            
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public ClubException.equiposDataTable mostrarEquipo()
        {
            return equipoDatos.GetData();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public int idEquipo()
        {
            int res = int.Parse(equipoDatos.IdEquipo().ToString());
            return res ;
        }
    }
}
