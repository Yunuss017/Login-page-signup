using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            string kullaniciadi = txtKullaniciAdi.Text;
            string sifre = txtSifre.Text;
            string adi = txtAdiSoyadi.Text;
            bool kontrolsonucu = new metotlar().KullaniciKontrol(kullaniciadi);
            if (kontrolsonucu == true)
            {
                lblMesaj.Text = "Böyle bir kullanıcı var";
            }
            else
            {
                Kullanici kl = new Kullanici();
                kl.Adi = adi;
                kl.KullaniciAdi = kullaniciadi;
                kl.Sifre = sifre;
                kl.KayitTarihi = DateTime.Now;
                new metotlar().KullaniciKaydet(kl);
                lblMesaj.Text = "Başarılı";
            }
        }

        protected void btnGecis_Click(object sender, EventArgs e)
        {
            Response.Redirect("Giris.aspx");
        }
    }
}