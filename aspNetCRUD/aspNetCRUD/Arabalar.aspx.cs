using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspNetCRUD
{
    public partial class Arabalar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OzCarEntities _db = new OzCarEntities();
            var Arabalar = _db.Arabas.ToList();
            Repeater1.DataSource = Arabalar;
            Repeater1.DataBind();

            if(Request.QueryString["Id"]!=null)
            {

                int id = int.Parse(Request.QueryString["id"]);
                var silKayit = _db.Arabas.Find(id);
                _db.Arabas.Remove(silKayit);
                _db.SaveChanges();
                Response.Redirect("Arabalar.aspx");

            }
        }
    }
}