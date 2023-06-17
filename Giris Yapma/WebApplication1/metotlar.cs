using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class metotlar
    {
        public bool KullaniciKaydet(Kullanici kl)
        {
            YönetimSistemiEntities vt = new YönetimSistemiEntities();
            vt.Kullanici.Add(kl);
            vt.SaveChanges();
            return true;
        }
        //aynı kullanıcıdan var olup olmadığını kontrol eder
        public bool KullaniciKontrol(string kullaniciadi)
        {
            YönetimSistemiEntities vt = new YönetimSistemiEntities();
            var kullanici = vt.Kullanici.Where(p => p.KullaniciAdi == kullaniciadi).ToList();
            if (kullanici.Count() > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}