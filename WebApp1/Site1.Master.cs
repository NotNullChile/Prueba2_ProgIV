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
    public partial class Site1 : System.Web.UI.MasterPage
    {

        
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Mantenedor"] != null)
            {
                txtUsername.Text = Session["Mantenedor"].ToString();
            }
        }

        UsuariosNegocio usuarioNegocio = new UsuariosNegocio();

        private void consultaMantenedor()
        {
            try
            {
                int rutUsuario = int.Parse(txtUsername.Text);
                string clave = txtPassword.Text;

                DataTable res = usuarioNegocio.consultaMantenedor(rutUsuario, clave);

                if (res.DefaultView.Count > 0)
                {
                    DataRow row = res.Rows[0];

                    string nombreMantenedor = row["nombreUsuario"].ToString();

                    Session["Mantenedor"] = nombreMantenedor;

                    Response.Redirect("default.aspx");
                }
            }
            catch (Exception)
            {
                

            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            consultaMantenedor();
        }

    }
}