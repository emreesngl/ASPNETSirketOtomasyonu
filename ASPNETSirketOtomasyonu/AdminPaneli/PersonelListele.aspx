<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="PersonelListele.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.PersonelListele" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section">

        <div class="section-header">
            <h1>
                <div>Personel Listesi</div>
            </h1>
        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-header">
                        <%--<form runat="server">--%>
                            <div>
                                <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control col-md-3" Style="float: left" Placeholder="Ad veya Soyad Ara"></asp:TextBox>
                                <asp:Button ID="btnSearch" runat="server" Text="Ara" CssClass="btn btn-primary" Style="float: left" OnClick="btnSearch_Click" />
                            </div>
                       <%-- </form>--%>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <th>ID</th>
                                        <th>Adı</th>
                                        <th>Soyadı</th>
                                        <th>Birimi</th>
                                        <%--<th>Telefon</th>--%>
                                        <th>Adres</th>
                                        <th>E-mail</th>
                                        <th>Açıklama</th>
                                        <th>Giriş Tarihi</th>
                                        <th>Sil</th>
                                        <th>Güncelle</th>
                                        <th>Detay</th>
                                    </tr>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <th><%# Eval("ID") %></th>
                                                <th><%# Eval("Adi") %></th>
                                                <th><%# Eval("Soyadi") %></th>
                                                <th><%# Eval("Birimler.Birim") %></th>
                                                <%--<th><%# Eval("Tel") %></th>--%>
                                                <th><%#KarakterSinirlama( Eval("Adres").ToString()) %></th>
                                                <th><%# Eval("Email") %></th>
                                                <th><%# Eval("Aciklama") %></th>
                                                <th><%#TarihFormati(DateTime.Parse(Eval("GirisTarihi").ToString())) %></th>
                                                <td><a href="/AdminPaneli/PersonelSil.aspx?gelenid=<%# Eval("ID") %>" class="badge badge-danger">Sil</a></td>
                                                <td><a href="/AdminPaneli/PersonelGuncelle.aspx?gelenid=<%# Eval("ID") %>" class="badge badge-success">Güncelle</a></td>
                                                <td><a href="/AdminPaneli/PersonelDetay.aspx?gelenid=<%# Eval("ID") %>" class="badge badge-secondary">Detay</a></td>
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </tbody>
                                            
                                        </FooterTemplate>
                                    </asp:Repeater>
                            </table>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <nav class="d-inline-block">
                            <ul class="pagination mb-0">
                                <%--<li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1"><i class="ion ion-chevron-left"></i></a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#">1 <span class="sr-only">(current)</span></a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">2</a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#"><i class="ion ion-chevron-right"></i></a>
                                </li>--%>
                            </ul>
                        </nav>
                    </div>
                </div>
                <a href="/AdminPaneli/YeniPersonel.aspx" class="btn-sm btn btn-info">Yeni Personel</a>
            </div>
            <div style="float: right">
                <cc1:CollectionPager ID="CollectionPager1" runat="server" PageSize="3" BackText="Geri" FirstText="İlk" NextText="İleri" LastText="Son" LabelText="Sayfa:" MaxPages="0" ShowFirstLast="True" ShowLabel="True" ShowPageNumbers="True" SectionPadding="10" ResultsLocation="Top" ControlCssClass="Sayfalama"></cc1:CollectionPager>
            </div>
            <br />
            <br />
        </div>
    </section>
    <style>
        .Sayfalama a {
            padding: 8px;
        }

            .Sayfalama a:hover {
                text-decoration: none;
                background-color: #d9d0d0;
            }
    </style>
</asp:Content>
