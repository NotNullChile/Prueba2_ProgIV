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
    public class DTsNegocio
    {
        Datos.ClubExceptionTableAdapters.DTsTableAdapter dts;

        public DTsNegocio()
        {
            dts = new Datos.ClubExceptionTableAdapters.DTsTableAdapter();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public int guardarDT(int rutDT, string nombreDT)
        {
            try
            {
                return dts.Insert(rutDT, nombreDT);
            }
            catch (SqlException e)
            {
                return e.Number;
            }
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public ClubException.DTsDataTable mostrarDTs()
        {
            return dts.GetData(); 
        }
    }
}
