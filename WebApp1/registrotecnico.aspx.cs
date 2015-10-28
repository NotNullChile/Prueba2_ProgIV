using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class registrotecnico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Mantenedor"] == null)
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            Response.Redirect("RegistroEquipos.aspx");
        }
    }
}