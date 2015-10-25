using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace WebApp1
{
    public partial class registropartidos : System.Web.UI.Page
    {
        Partidos partidos = new Partidos();
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox txtIdPartido = (TextBox)DVPartidos.FindControl("txtIdPartido");
            txtIdPartido.Text = partidos.idPartido().ToString();
        }

        protected void txtIdPartido_Load(object sender, EventArgs e)
        {
            TextBox txtIdPartido = (TextBox)DVPartidos.FindControl("txtIdPartido");
            txtIdPartido.Text = partidos.idPartido().ToString();
        }
    }
}