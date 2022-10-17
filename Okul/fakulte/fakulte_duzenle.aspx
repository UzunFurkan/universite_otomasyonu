<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fakulte_duzenle.aspx.cs" Inherits="universite_universite_ekle" %>

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
            <div class="sidebar-heading border-bottom bg-light">Start Bootstrap</div>
            <div class="list-group list-group-flush">
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/universite/universite_listesi.aspx">Üniversite İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/fakulte/fakulte_listesi.aspx">Fakülte İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/bolum/bolum_listesi.aspx">Bölüm İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/ogrenci/ogrenci_listesi.aspx">Öğrenci İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/profesor/profesor_listesi.aspx">Profesör İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#">Yardım</a>
            </div>
        </div>
        <!-- Page content wrapper-->
        <div id="page-content-wrapper">

            <!-- Page content-->
            <div class="container-fluid">      
                <form id="form1" runat="server">
                    <h3>Fakülte Düzenle</h3>

                    
                    <div class="form-group">
                        <label for="txtUniversiteID">Üniversite Adı</label>
                        <asp:DropDownList runat="server" CssClass="form-control" ID="universiteCombo" AutoPostBack="true" >
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="txtFakulteAdi">Fakülte Adı</label>
                        <asp:TextBox runat="server" ID="txtFakulteAdi" CssClass="form-control" placeholder="Mühendislik Fakültesi..." />
                    </div>
                    <asp:Button Text="Kaydet" ID="btnKaydet" runat="server" CssClass="btn btn-outline-success" OnClick="btnKaydet_Click" />
                    <a class="btn btn-danger" href="/fakulte/fakulte.aspx">İptal</a>
                </form>

            </div>
        </div>
    </div>


</body>
</html>

