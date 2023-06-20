<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="YeniPersonel.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.YeniPersonel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        Textbox {
            background-color: rgba(255,255,255,0.16)
        }
    </style>
    0
    <section class="section">
        <div class="section-header">
            <h1>
                <div>Yeni Personel Ekleme</div>
            </h1>
        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-body">

                        <%--<form runat="server">--%>
                        <div class="form-group">
                            <div class="form-group">
                                <b>Fotoğraf</b>
                                <asp:Image ID="Image1" runat="server" class="form-control resim" Height="100px" Width="100px"></asp:Image>
                            </div>
                            <div class="form-group">
                                <asp:FileUpload ID="FileUpload1" CssClass="form-group" runat="server" onchange="$('.resim')[0].src = window.URL.createObjectURL(this.files[0])" />

                            </div>
                            <b>Personel Adı:</b><asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <b>Personel Soyadı:</b><asp:TextBox ID="txtSoyad" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <b>Birim:</b><asp:DropDownList ID="DropdownBirim" CssClass="form-control" runat="server"></asp:DropDownList>
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
                            <b>Çalışma Durumu:</b><br />
                            <br />
                            <asp:RadioButton ID="RadioAktif" GroupName="isactive" runat="server" Text="Aktif" /><br />
                            <asp:RadioButton ID="RadioPasif" GroupName="isactive" runat="server" Text="Pasif" />

                        </div>
                        <div class="form-group">
                            <b>Giriş Tarihi:</b><asp:TextBox ID="txtTarih" type="date" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnEkle" runat="server" Text="Ekle" CssClass="btn btn-info" OnClick="btnEkle_Click"></asp:Button>
                        </div>
                        <%--</form>--%>
                    </div>
                </div>
            </div>
    </section>
</asp:Content>
