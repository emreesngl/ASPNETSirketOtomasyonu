<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="DuyuruDetay.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.DuyuruDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <div class="section-header">
            <h1>
                <div>Duyuru Detay</div>
            </h1>
        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-body">

                    <div class="form-group">
                    <b>ID:</b><asp:TextBox ID="txtID" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                    </div>
                    <b>Başlık:</b><asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <b>Duyuru:</b><asp:TextBox ID="txtDuyuru" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                
                <div class="form-group">
                    <b>Açıklama:</b><asp:TextBox ID="txtAciklama" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <b>Saat:</b><asp:TextBox ID="txtSaat" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                

            </div>
        </div>

    </section>
</asp:Content>
