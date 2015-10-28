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
    public class Jugadores
    {
        Datos.ClubExceptionTableAdapters.jugadoresTableAdapter jugadores;

        public Jugadores()
        {
            jugadores = new Datos.ClubExceptionTableAdapters.jugadoresTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public int guardarJugador(int rutJugador, string nombreJugador, int edad, int idEquipo, int idPosicion)
        {
            try
            {
                return jugadores.Insert(rutJugador, nombreJugador, edad, idEquipo, 0, idPosicion);
            }
            catch (SqlException e)
            {
                return e.Number;
            }
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete, true)]
        public int borrarJugador(int Original_rutJugador)
        {
            try
            {
                return jugadores.Delete(Original_rutJugador);
            }
            catch (SqlException e)
            {
                return e.Number;
            }
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update, true)]
        public int agregarGoles(int goles, int rutJugador, int golesConvertidos, int original_rutJugador)
        {
            try
            {
                return jugadores.agregarGoles(golesConvertidos, rutJugador);
            }
            catch (SqlException e)
            {
                return e.Number;
            }
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update, false)]
        public int modificarGoles(int goles, int golesConvertidos, int original_rutJugador)
        {
            try
            {
                return jugadores.updateGolesConvertidosView(golesConvertidos, original_rutJugador);
            }
            catch (SqlException e)
            {
                return e.Number;
            }
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public ClubException.jugadoresDataTable mostrarJugadores()
        {
            return jugadores.GetData();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public string equipoJugador(int rutJugador)
        {
            return jugadores.equipoJugador(rutJugador);
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public string nombreJugador(int rutJugador)
        {
            return jugadores.nombreJugador(rutJugador).ToString();
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public string posicionJugador(int rutJugador)
        {
            return jugadores.posicionJugador(rutJugador).ToString();
        }
        

    }
}
