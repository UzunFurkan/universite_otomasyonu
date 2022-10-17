<%@ Page Language="C#" AutoEventWireup="true" CodeFile="universite_ekle.aspx.cs" Inherits="universite_universite_ekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Okul Otomasyonu</title>
    <link href="/assets/css/styles.css" rel="stylesheet" />
    <script src="/assets/js/scripts.js"></script>
</head>
<body>
    <div class="d-flex" id="wrapper">
        <!-- Sidebar-->
        <div class="border-end bg-white" id="sidebar-wrapper">
            <div class="sidebar-heading border-bottom bg-light">HOŞGELDİNİZ</div>
            <div class="list-group list-group-flush">
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/universite/universite_listesi.aspx">Üniversite İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/fakulte/fakulte_listesi.aspx">Fakülte İşlemleri</a>
              
            </div>
        </div>
        <!-- Page content wrapper-->
        <div id="page-content-wrapper">

            <!-- Page content-->
            <div class="container-fluid">
                <h3>Üniversite Ekle</h3>
                <form id="form1" runat="server">
                    <div class="form-group">
                        <label for="txtUniversiteAdi">Üniversite Adı</label>
                        <asp:TextBox runat="server" ID="txtUniversiteAdi" CssClass="form-control" placeholder="Kütahya Üniversitesi..." />
                    </div>
                    <asp:Button Text="Kaydet" ID="btnKaydet" runat="server" CssClass="btn btn-outline-success" OnClick="btnKaydet_Click" />
                    <a class="btn btn-danger" href="/universite/universite_listesi.aspx">İptal</a>
                </form>

            </div>
        </div>
    </div>


</body>
</html>

