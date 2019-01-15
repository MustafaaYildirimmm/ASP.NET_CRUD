using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspNetCRUD
{
    public partial class ArabaEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                OzCarEntities _db = new OzCarEntities();
                int id = int.Parse(Request.QueryString["Id"]);
                var guncelKayit = _db.Arabas.Find(id);
                txtMarka.Text = guncelKayit.Marka;
                txtModel.Text = guncelKayit.Model;
                txtKapi.Text = guncelKayit.KapiSayisi.ToString();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            OzCarEntities _db = new OzCarEntities();
            int id = int.Parse(Request.QueryString["Id"]);
            var guncelKayit = _db.Arabas.Find(id);
            guncelKayit.Model = txtModel.Text;
            guncelKayit.KapiSayisi = Convert.ToInt32(txtKapi.Text);

            _db.SaveChanges();
            Response.Redirect("Arabalar.aspx");
        }
    }
}