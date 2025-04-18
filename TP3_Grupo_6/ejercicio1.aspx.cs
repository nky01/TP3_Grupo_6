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
            if (Page.IsValid)
            {
                locatelist.Items.Add(new ListItem(txtLocalidad.Text));
                guardarLocalidad.Text = "Localidad agregada";
                txtLocalidad.Text = string.Empty;
            }
            else
            {
                guardarLocalidad.Text = "";
            }
        }

        protected void buttonUsuario_Click(object sender, EventArgs e)
        {
            lblWelcome.Text = "Bienvenido " + namebox.Text;
            namebox.Text = "";
            mailbox.Text = "";
            Cpbox.Text = "";
            locatelist.SelectedIndex = 0;
            lblWelcome.Visible = true;
        }

        protected void btnInicioaspx_Click(object sender, EventArgs e)
        {
            Server.Transfer("Inicio.aspx");
        }

        protected void cvLocalidades_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = true;

            foreach (ListItem item in locatelist.Items){
                if (item.Text.ToUpper() == txtLocalidad.Text.ToUpper())
                {
                    args.IsValid = false;
                    break;
                }
            }
        }
    }
}


         

         