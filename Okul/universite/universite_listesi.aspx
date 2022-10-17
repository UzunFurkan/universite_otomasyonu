<%@ Page Language="C#" AutoEventWireup="true" CodeFile="universite_listesi.aspx.cs" Inherits="universite_universite_litesi" %>








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
                <form id="form2" runat="server">
                    <h3>Üniversite Listesi</h3>

                    <table class="table table-hover ">

                        <thead>
                            <tr>
                                <th>id</th>
                                <th>Üniversite Adı</th>
                                <th>İşlemler</th>
                            </tr>
                        </thead>

                        <tbody>

                            <asp:Repeater runat="server" ID="universiteList">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("universite_id") %></td>
                                        <td><%#Eval("universite_adi") %>></td>
                                        <td>
                                            <asp:HyperLink NavigateUrl='<%#"universite_sil.aspx?id" + Eval("universite_id") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                                            <asp:HyperLink NavigateUrl='<%#"universite_duzenle.aspx?id=" + Eval("universite_id") %>' runat="server" CssClass="btn btn-success">Düzenle</asp:HyperLink>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>

                    <a  class="btn btn-primary" href="/universite/universite_ekle.aspx">Üniversite Ekle</a>
                </form>

            </div>
        </div>
    </div>


</body>
</html>

