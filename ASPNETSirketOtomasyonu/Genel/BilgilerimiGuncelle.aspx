<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BilgilerimiGuncelle.aspx.cs" Inherits="ASPNETSirketOtomasyonu.Genel.BilgilerimiGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="form-group">
            <b>Fotoğraf</b>
            <asp:Image ID="Image1" runat="server" class="form-control resim" Height="100px" Width="100px"></asp:Image>
        </div>
        <div class="form-group">
            <asp:FileUpload ID="FileUpload1" CssClass="form-group" runat="server" onchange="$('.resim')[0].src = window.URL.createObjectURL(this.files[0])" />
        </div>
        <div class="form-group">
            <b>Adı</b><br />
            <asp:TextBox ID="txtAdi" CssClass="form-conrtol" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>Soyadı</b><br />
            <asp:TextBox ID="txtSoyadi" CssClass="form-conrtol" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>Kullanıcı Adı</b><br />
            <asp:TextBox ID="txtKullaniciAdi" CssClass="form-conrtol" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>Şifre</b><br />
            <asp:TextBox ID="txtSifre" CssClass="form-conrtol" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>E-mail</b><br />
            <asp:TextBox ID="txtEmail" CssClass="form-conrtol" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="btnGuncelle" runat="server" Text="Değiştir" CssClass="btn btn-success" OnClick="btnGuncelle_Click" />
        </div>
    </div>
</asp:Content>
