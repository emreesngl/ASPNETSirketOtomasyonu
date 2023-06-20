<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="YetkiDegistir.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.YetkiDegistir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section">

        <div class="section-header">
            <h1>
                <div>Kullanıcı Yetki Değişimi</div>
            </h1>
        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-header">
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">

                            <div class="form-group">
                                <b>ID</b><asp:TextBox  CssClass="form-control" ID = "txtID"   runat = "server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <b>Adı Soyadı </b><asp:TextBox  CssClass="form-control" ID = "txtAdSoyad"  runat = "server"></asp:TextBox>

                            </div>

                            <div class="form-group">
                                <b>Yetki </b><asp:DropdownList CssClass="form-control"  ID = "DropdownList1"  runat = "server"></asp:Dropdownlist>


                            </div>
                            <div class="form-group">
                                <asp:Button ID = "btnYetki"  CssClass="btn btn-success btn-sm"  runat = "server" Text="Yetki Değiştir" OnClick="btnYetki_Click"/>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>

</asp:Content>
