using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Villas
{
    public partial class Villas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Repeater1.DataSource = BD.Villas.SeleccionarTodos();
                Repeater1.DataBind();
           
                    
                    
                    }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
           BD.Villas vil = new BD.Villas();
            vil.nombre = nombre.Value.ToString();
            vil.descripcion = descripcion.Value.ToString();
            BD.Villas.Insertar(vil);
            Response.Redirect("Villas.aspx");
        }
    }
}