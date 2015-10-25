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
    public class Partidos
    {
                Datos.ClubExceptionTableAdapters.partidosTableAdapter partidos;

        public Partidos()
        {
            partidos = new Datos.ClubExceptionTableAdapters.partidosTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public int guardarPartido(int idPartido, int equipoLocal, int equipoVisita, int golesLocal, int golesVisita, int idEstadio, DateTime fechaPartido, int fechaTorneo)
        {
            try
            {
                return partidos.Insert(idPartido, equipoLocal, equipoVisita, golesLocal, golesVisita, idEstadio, fechaPartido, fechaTorneo);
            }
            catch (SqlException e)
            {
                return e.Number;
            }
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public ClubException.partidosDataTable mostrarPartidos()
        {
            return partidos.GetData();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public int idPartido()
        {
            return int.Parse(partidos.IdPartido().ToString());
        }

    }
}
