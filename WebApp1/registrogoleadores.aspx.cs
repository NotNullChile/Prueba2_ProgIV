using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace WebApp1
{
    public partial class registrogoleadores : System.Web.UI.Page
    {
        Jugadores jugadores = new Jugadores();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Mantenedor"] == null)
            {
                Response.Redirect("default.aspx");
            }

        }

        protected void DropDownList2_TextChanged(object sender, EventArgs e)
        {
            TextBox txtNombreJugador = (TextBox)DVGoles.FindControl("txtNombreJugador");
            TextBox txtEquipo        = (TextBox)DVGoles.FindControl("txtEquipo");
            TextBox txtPosicion      = (TextBox)DVGoles.FindControl("txtPosicion");
            DropDownList DDLRut      = (DropDownList)DVGoles.FindControl("DropDownList2");
            TextBox txtGanancia      = (TextBox)DVGoles.FindControl("txtGanancia");
            TextBox txtGoles         = (TextBox)DVGoles.FindControl("txtGoles");
            int rutJugador           = int.Parse(DDLRut.SelectedValue.ToString());
            int goles                = int.Parse(txtGoles.Text);
            int totalGanancia        = goles * 100000;

            txtNombreJugador.Text    = jugadores.nombreJugador(rutJugador).ToString();
            txtEquipo.Text           = jugadores.equipoJugador(rutJugador).ToString();
            txtPosicion.Text         = jugadores.posicionJugador(rutJugador).ToString();
            txtGanancia.Text         = totalGanancia.ToString();
        }

        protected void txtGoles_TextChanged(object sender, EventArgs e)
        {
            TextBox txtGanancia = (TextBox)DVGoles.FindControl("txtGanancia");
            TextBox txtGoles = (TextBox)DVGoles.FindControl("txtGoles");
            int goles = int.Parse(txtGoles.Text);
            int totalGanancia = goles * 100000;
            txtGanancia.Text = totalGanancia.ToString();
        }

        protected void DVGoles_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}