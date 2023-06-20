﻿using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class BirimListele : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.Birimler.ToList();
            Repeater1.DataSource = model;
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Footer)
            {
                var footer = e.Item.FindControl("lblKayitsayisi") as Label;
                var model = db.Birimler.Count();
                footer.Text = "Toplam " + model + " kayıt listelendi.";
            }
        }
    }
}