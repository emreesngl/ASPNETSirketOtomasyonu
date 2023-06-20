using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.Genel
{
    public partial class iletisim : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.Sirket.FirstOrDefault();
            lblSirketAdi.Text = model.SirketAdi;
            lblTel.Text = model.Tel;
            lblFax.Text = model.Fax;
            lblEmail.Text = model.Email;
            lblAdres.Text = model.Adres;
            lblTarih.Text = model.KurulusTarihi.Value.ToString("dd-MM-yyyy");
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            Iletisim model = new Iletisim
            {
                AdiSoyadi = txtAdiSoyadi.Text,
                Email = txtEmail.Text,
                Baslik = txtBaslik.Text,
                Mesaj = txtMesaj.Text,
                Tarih=DateTime.Now
            };
            db.Iletisim.Add(model);
            db.SaveChanges();
            Response.Write("Mesajınız başarılı bir şekilde gönderildi");
        }
    }
}