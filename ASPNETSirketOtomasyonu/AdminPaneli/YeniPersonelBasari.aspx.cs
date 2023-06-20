using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class YeniPersonelBasari : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var model = (from x in db.Personeller
                             select new
                             {
                                 Value = x.ID.ToString(),
                                 Text = x.Adi + "  " + x.Soyadi
                             }).ToList();
                DropDownList1.DataSource = model;
                DropDownList1.DataValueField = "Value";
                DropDownList1.DataTextField = "Text";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("-----Seçiniz----", "0"));
            }
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            var model = new PersonelBasarilari
            {
                Basari = txtBasari.Text,
                PersonelID = int.Parse(DropDownList1.SelectedValue),
                Tarih = DateTime.Parse(txtTarih.Text)
            };
            db.PersonelBasarilari.Add(model);
            db.SaveChanges();
            Response.Redirect("/Adminpaneli/PersonelBasarilariListele.aspx");

        }
    }
}