<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="PersonelDetay.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.PersonelDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <div class="section-header">
            <h1>
                <div>Personel Detay</div>
            </h1>
        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-body">

                        
                            <div class="form-group">
                                <div class="form-group">
                                    <b>Fotoğraf</b>
                                    <asp:Image ID="Image1" runat="server" class="form-control resim" Height="100px" Width="100px"></asp:Image>
                                </div>
                            </div>
                            <div class="form-group">
                                <b>Personel Adı:</b><asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Personel Soyadı:</b><asp:TextBox ID="txtSoyad" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Birim:</b><asp:TextBox ID="txtBirim" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Telefon:</b><asp:TextBox ID="txtTel" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>E-mail:</b><asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Adres:</b><asp:TextBox ID="txtAdres" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Maaş:</b><asp:TextBox ID="txtMaas" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Açıklama:</b><asp:TextBox ID="txtAciklama" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Çalışma Durumu:</b><asp:TextBox ID="txtAktifMi" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Giriş Tarihi:</b><asp:TextBox ID="txtTarih" type="date" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                       </div>
                    </div>
                </div>
            </div>
    </section>
</asp:Content>
