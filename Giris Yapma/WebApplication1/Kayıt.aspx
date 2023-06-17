<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kayıt.aspx.cs" Inherits="WebApplication1.WebForm1" %>



<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V18</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/css/util.css">
	<link rel="stylesheet" type="text/css" href="Login/css/main.css">
<!--===============================================================================================-->
		<style>
  .login100-form {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
  }
  .custom-button {
    background-color: #5383a0;
  }

</style>
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-color: #666666;">
			<div class="wrap-login100">
				<form runat="server" class="login100-form validate-form">
					<span class="login100-form-title p-b-43">
						Devam Etmek İçin Kayıt Ol
					</span>
					
					<div class="wrap-input100 validate-input" data-validate = "Lütfen ilgili alanı düzgün doldurunuz.">
						<asp:TextBox ID="txtKullaniciAdi" class="input100"  runat="server" Width="500px" Height="70px" Placeholder="Kullanıcı Adı" Font-Size="15pt"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Lütfen ilgili alanı düzgün doldurunuz.">
						<asp:TextBox ID="txtAdiSoyadi" class="input100"  runat="server" Width="500px" Height="70px" Placeholder="Ad Soyad" Font-Size="15pt"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Lütfen ilgili alanı düzgün doldurunuz.">
					
						<asp:TextBox ID="txtSifre" class="input100"  runat="server" Width="500px" Height="70px" Placeholder="Şifre" Font-Size="15pt"></asp:TextBox>
						<span class="focus-input100"></span>
						
					</div>
					<div class="container-login100-form-btn">
                        <asp:Button ID="btnKaydet" class="login100-form-btn custom-button" runat="server" Text="Kayıt Ol" OnClick="btnKaydet_Click" />
                        <br /><br /><br />
                        <asp:Button ID="btnGecis" class="login100-form-btn custom-button" runat="server" Text="Giriş Yap" OnClick="btnGecis_Click" />
						<br />
                        <asp:Label ID="lblMesaj" runat="server" Text=""></asp:Label>
					</div>

				
				</form>

			</div>
		</div>
	</div>
	
	

	
	
<!--===============================================================================================-->
	<script src="Login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Login/vendor/bootstrap/js/popper.js"></script>
	<script src="Login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Login/vendor/daterangepicker/moment.min.js"></script>
	<script src="Login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Login/js/main.js"></script>

</body>
</html>
