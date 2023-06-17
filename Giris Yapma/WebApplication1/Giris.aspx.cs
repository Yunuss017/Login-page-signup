using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1
{
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = txtKullaniciAdi.Text;
            string sifre = txtSifre.Text;
            YönetimSistemiEntities vt = new YönetimSistemiEntities();
            var liste = vt.Kullanici.Where(p =>p.KullaniciAdi== kullaniciAdi).ToList();
            if (liste.Count() > 0)
            {
                Session["KullaniciID"] = liste[0].KullaniciId;
                Response.Redirect("Yönlendirme.aspx");
            }
            else
            {
                lblMesaj.Text = "Hatalı Giriş";
            }
        }

        protected void btnGecis_Click(object sender, EventArgs e)
        {
            Response.Redirect("Kayıt.aspx");
        }
    }
}