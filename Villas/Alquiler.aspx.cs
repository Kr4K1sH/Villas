using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Villas
{
    public partial class Alquiler : System.Web.UI.Page
    { Double t = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                RepeaterVillas.DataSource = BD.Alquiler.SeleccionarTodos();
                RepeaterVillas.DataBind();

                ddlVillas.DataSource = BD.Villas.SeleccionarTodos();
                ddlVillas.DataTextField = "nombre";
                ddlVillas.DataValueField = "idVilla";
                ddlVillas.DataBind();


            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            BD.Alquiler al = new BD.Alquiler();
            al.idCliente =idCliente.Value;
            al.nombreCliente = txtNombreCliente.Value;
            string fecha = txtFecha.Value.ToString();
            
            al.fecha = DateTime.Parse(fecha);
            al.idVilla = Convert.ToInt16(ddlVillas.SelectedValue);
            al.dias = Convert.ToInt16(Dias.Value);
            al.personas = Convert.ToInt16(Personas.Value);
            al.total = CalcularTotal();
            BD.Alquiler.Insertar(al);
            Response.Redirect("Alquiler.aspx");
        }
        protected double CalcularTotal()
        {
            double total = 0;
            total = 150;
            total += total * int.Parse(Personas.Value);
            total += total * int.Parse(Dias.Value);
            return total;
        }

        protected void Calcular_Click(object sender, EventArgs e)
        {
            t = 0;
            double total = 0;
            total = 150;
            total += total * int.Parse(Personas.Value);
            total += total * int.Parse(Dias.Value);
            txtTotal.Value = total.ToString();
            t = total;


        }
    }
}