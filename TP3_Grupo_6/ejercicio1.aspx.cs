using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_Grupo_6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void guardarlocate_Click(object sender, EventArgs e)
        {
            string localidad = txtLocalidad.Text.Trim().ToLower();
            bool existe = false;

            foreach (ListItem item in locatelist.Items)
            {
                if (item.Text.ToLower() == localidad)
                {
                    existe = true;
                    break;
                }
            }

            if (existe)
            {
                repetido.Text = "La localidad ya había sido ingresada.";
            }
            else
            {
                locatelist.Items.Add(new ListItem(txtLocalidad.Text)); 
                guardarLocalidad.Text = "Localidad agregada";
            }
        }
    }
}


         

         