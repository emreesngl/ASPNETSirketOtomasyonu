﻿using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class PersonelGuncelle : System.Web.UI.Page
    {
        ASPNETSirketEntities db=new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var model2 = db.Birimler.ToList();
                DropdownBirim.DataTextField = "Birim";
                DropdownBirim.DataValueField = "ID";
                DropdownBirim.DataSource = model2;
                DropdownBirim.DataBind();

                int id = int.Parse(Request.QueryString["gelenid"]);
                var model = db.Personeller.FirstOrDefault(x => x.ID == id);
                DropdownBirim.SelectedValue = model.BirimID.ToString();
                txtAd.Text = model.Adi;
                txtSoyad.Text = model.Soyadi;
                txtTel.Text = model.Tel;
                txtEmail.Text = model.Email;
                txtAdres.Text = model.Adres;
                txtMaas.Text = model.Maasi.ToString();
                Image1.ImageUrl = model.Resim;
                txtAciklama.Text = model.Aciklama;
                txtTarih.Text = model.GirisTarihi.Value.ToString("yyyy-MM-dd");
                if (model.Isactive == true)
                {
                    RadioAktif.Checked = true;
                }
                else if (model.Isactive == false)
                {
                    RadioAktif.Checked = true;
                }
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            bool aktifmi = false;
            if (RadioAktif.Checked == true)
            {
                aktifmi = true;
            }
            else if (RadioPasif.Checked == true)
            {
                aktifmi = false;
            }

            int id = int.Parse(Request.QueryString["gelenid"]);
            var model = db.Personeller.FirstOrDefault(x => x.ID == id);
            model.Adi = txtAd.Text;
            model.Soyadi = txtSoyad.Text;
            model.Tel = txtTel.Text;
            model.Adres = txtAdres.Text;
            model.Email = txtEmail.Text;
            model.BirimID = int.Parse(DropdownBirim.SelectedValue);
            model.Maasi = decimal.Parse(txtMaas.Text);
            model.Aciklama = txtAciklama.Text;
            model.GirisTarihi = DateTime.Parse(txtTarih.Text);
            model.Isactive = aktifmi;
            if (FileUpload1.HasFile == true)
            {
                FileUpload1.SaveAs(Server.MapPath("/Images/" + FileUpload1.FileName));
                model.Resim = "/Images/" + FileUpload1.FileName;
            }
            db.SaveChanges();
            Response.Redirect("/AdminPaneli/PersonelListele.aspx");
        }
    }
}