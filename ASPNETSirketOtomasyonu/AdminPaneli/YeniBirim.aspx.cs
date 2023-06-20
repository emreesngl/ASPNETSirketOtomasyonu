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
    public partial class YeniBirim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void btnEkle_Click(object sender, EventArgs e)
        {
            var model = new Birimler
            {
                Birim = txtBirim.Text,
                Aciklama = txtAciklama.Text
            };
            db.Birimler.Add(model);
            db.SaveChanges();
        }
    }
}