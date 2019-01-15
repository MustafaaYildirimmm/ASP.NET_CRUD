using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspNetCRUD
{
    public partial class ArabaEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            OzCarEntities _db = new OzCarEntities();
            Araba arb = new Araba();
            arb.Marka = txtMarka.Text;
            arb.Model = txtModel.Text;
            arb.KapiSayisi = Convert.ToInt32(txtKapi.Text);

            _db.Arabas.Add(arb);
            if (_db.SaveChanges() > 0)
            {
                Response.Redirect("Arabalar.aspx");
            }
        }
    }
}