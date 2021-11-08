using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Negocio;

namespace Vistas.Categoria
{
    public partial class EliminarCategoria : System.Web.UI.Page
    {
        NegocioCategoria deleteCat = new NegocioCategoria();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnElliminar_Click(object sender, EventArgs e)
        {
            int codigo = int.Parse(txtIdSuc.Text);
            bool exito = deleteCat.EliminarCategoria(codigo);
            if (exito == true)
            {
                lblmensaje.Text = "La Categoria se ha eliminado con éxito";
                txtIdSuc.Text = " ";
            }
            else
            {
                lblmensaje.Text = "La Categoria no se ha podido eliminar";
                txtIdSuc.Text = " ";
            }
        }
    }
}