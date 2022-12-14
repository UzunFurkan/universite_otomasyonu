using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class universite_universite_ekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            OkulTableAdapters.fakulteTableAdapter fakulte = new OkulTableAdapters.fakulteTableAdapter();
            OkulTableAdapters.universiteTableAdapter univ = new OkulTableAdapters.universiteTableAdapter();
            int id = Convert.ToInt32(Request.QueryString["id"]);
            int universiteID = fakulte.FakulteGetir(id)[0].universite_id;
            string fakulteAdi = fakulte.FakulteGetir(id)[0].fakulte_adi;
            string universiteAdi = univ.UniversiteGetir(universiteID)[0].universite_adi;
            txtFakulteAdi.Text = fakulteAdi;
            universiteCombo.Items.Clear();
            universiteCombo.DataSource = univ.UniversiteListesiGetir();
            universiteCombo.DataTextField = "universite_adi";
            universiteCombo.DataValueField = "universite_id";
            universiteCombo.DataBind();
            universiteCombo.SelectedIndex = universiteCombo.Items.IndexOf(universiteCombo.Items.FindByText(universiteAdi));
        }
      
    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        OkulTableAdapters.fakulteTableAdapter fakulte = new OkulTableAdapters.fakulteTableAdapter();
        int id = Convert.ToInt32(Request.QueryString["id"]);
        int universiteID = Convert.ToInt32(universiteCombo.SelectedItem.Value);
        fakulte.FakulteGuncelle(txtFakulteAdi.Text,universiteID,id);
        Response.Redirect("/fakulte/fakulte_listesi.aspx");

        
      // listeleme kısmına göndermek için yazdığım kod  
        
    }
}