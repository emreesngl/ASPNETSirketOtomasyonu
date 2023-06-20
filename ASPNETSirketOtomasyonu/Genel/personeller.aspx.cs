using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.Genel
{
    public partial class personeller : System.Web.UI.Page
    {
        ASPNETSirketEntities db=new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model= db.Personeller.Where(x=>x.Isactive==true).ToList();
            Repeater1.DataSource = model;
            Repeater1.DataBind();
        }
    }
}