using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.Genel
{
    public partial class SiteArama : System.Web.UI.Page
    {
        ASPNETSirketEntities db=new ASPNETSirketEntities();

        public string guvenlik(string cevir)
        {
            cevir = Regex.Replace(cevir, ",", "");
            cevir = Regex.Replace(cevir, "/", "");
            cevir = Regex.Replace(cevir, "\n", "");
            cevir = Regex.Replace(cevir, "/?", "");
            cevir = Regex.Replace(cevir, "/*", "");
            cevir = Regex.Replace(cevir, "'", "");
            cevir = Regex.Replace(cevir, "&", "");
            cevir = Regex.Replace(cevir, "<", "");
            cevir = Regex.Replace(cevir, ">", "");
            cevir = Regex.Replace(cevir, "=", "");

            return cevir;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string gelen = guvenlik(Request.QueryString["gelendeger"]);
            var model = db.Personeller.Where(x => x.Adi.Contains(gelen) || x.Soyadi.Contains(gelen)).ToList();
            if (model.Count > 0)
            {
                Repeater1.DataSource = model;
                Repeater1.DataBind();
            }
            if (model.Count == 0)
            {
                Label1.Text = "Aranılan Kayıt Bulunamadı!";
            }
        }
    }
}