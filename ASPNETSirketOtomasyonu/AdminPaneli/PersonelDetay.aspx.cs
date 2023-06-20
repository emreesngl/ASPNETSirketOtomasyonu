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
    public partial class PersonelDetay : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["gelenid"]);
            var model = db.Personeller.FirstOrDefault(x => x.ID == id);
            txtBirim.Text = model.Birimler.Birim;
            txtAd.Text = model.Adi;
            txtSoyad.Text = model.Soyadi;
            txtTel.Text = model.Tel;
            txtEmail.Text = model.Email;
            txtAdres.Text = model.Adres;
            txtMaas.Text = model.Maasi.ToString();
            Image1.ImageUrl = model.Resim;
            txtAciklama.Text = model.Aciklama;
            txtTarih.Text = model.GirisTarihi.Value.ToString("dd-MM-yyyy");

            if (model.Isactive == true)
            {
                txtAktifMi.Text = "Çalışıyor";
            }
            else if (model.Isactive == false)
            {
                txtAktifMi.Text = "Çalışmıyor";
            }
        }
    }
}