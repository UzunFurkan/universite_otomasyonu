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

    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        OkulTableAdapters.universiteTableAdapter univ = new OkulTableAdapters.universiteTableAdapter();
        univ.UniversiteEkle(txtUniversiteAdi.Text);
      // listeleme kısmına göndermek için yazdığım kod  
        Response.Redirect("/universite/universite_listesi.aspx");
    }
}