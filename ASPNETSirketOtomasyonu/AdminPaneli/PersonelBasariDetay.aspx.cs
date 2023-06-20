using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class PersonelBasariDetay : System.Web.UI.Page
    {
        ASPNETSirketEntities db=new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var model = (from x in db.Personeller
                             select new
                             {
                                 Value = x.ID.ToString(),
                                 Text = x.ID + "- "+ x.Adi + "  " + x.Soyadi
                             }).ToList();
                DropDownList1.DataSource = model;
                DropDownList1.DataValueField = "Value";
                DropDownList1.DataTextField = "Text";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("-----Seçiniz----", "0"));
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int personelid = int.Parse(DropDownList1.SelectedValue);
            var model = db.PersonelBasarilari.Where(x => x.PersonelID == personelid).ToList();
            Repeater1.DataBind();
            for (int i = 0; i < Repeater1.Items.Count; i++)
            {
                var lbl = Repeater1.Items[i].FindControl("lblCount") as Label;
                lbl.Text = (i + 1) + ".";
            }
        }
    }
}