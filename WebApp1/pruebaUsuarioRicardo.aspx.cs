using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;
namespace WebApp1
{
    public partial class pruebaUsuarioRicardo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        UsuariosNegocio usuarioNegocio = new UsuariosNegocio();

        private void consultaMantenedor()
        {
            int rutUsuario = int.Parse(txtRutUsuario.Text);
            string clave = txtClave.Text;

            DataTable res = usuarioNegocio.consultaMantenedor(rutUsuario, clave);

            if (res.DefaultView.Count > 0 )
            {
                DataRow row = res.Rows[0];

                string nombreMantenedor = row["nombreUsuario"].ToString();

                Session["Mantenedor"] = nombreMantenedor;

                Response.Redirect("pruebaHolaRicardo.aspx");            
            }
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            consultaMantenedor();
        }
    }
}