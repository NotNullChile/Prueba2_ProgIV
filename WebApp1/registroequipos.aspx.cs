using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace WebApp1
{
    public partial class RegistroEquipos : System.Web.UI.Page
    {

        Equipos equipo = new Equipos();
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox txtIdEquipo = (TextBox)DetailsView1.FindControl("txtIdEquipo");
            txtIdEquipo.Text = equipo.idEquipo().ToString();

        }

        protected void txtIdEquipo_Load(object sender, EventArgs e)
        {
            TextBox txtIdEquipo = (TextBox)DetailsView1.FindControl("txtIdEquipo");
            txtIdEquipo.Text = equipo.idEquipo().ToString();
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            
        }

        public void insert()
        {
            TextBox idEquipot = (TextBox)DetailsView1.FindControl("txtIdEquipo");
            TextBox nombreEquipo = (TextBox)DetailsView1.FindControl("txtNombreEquipo");
            DropDownList idComuna = (DropDownList)DetailsView1.FindControl("DDLComuna");
            DropDownList rutDT = (DropDownList)DetailsView1.FindControl("DDLDT");
            DropDownList division = (DropDownList)DetailsView1.FindControl("DLLDivision");

            int idEquipo = int.Parse(idEquipot.Text);
            int comuna = int.Parse(idComuna.SelectedValue.ToString());
            int dt = int.Parse(rutDT.SelectedValue.ToString());

            int res = equipo.guardarEquipo(idEquipo, nombreEquipo.Text, comuna, dt, division.Text);

            switch (res)
            {
                case 2627:
                    RequiredFieldValidator lblError = (RequiredFieldValidator)DetailsView1.FindControl("rfNombreEquipo");
                    lblError.Text = ("Dt ya esta registrado en otro equipo");
                    break;
                default:
                    break;
            }
        }
        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            
        }
        
    }
}