<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Kullanici_ekle.ascx.cs" Inherits="Admin.moduller.kullanıcı_ekle" %>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"/> 
<script src="js/jquery.min.js"> </script>
<!-- Mainly scripts -->
<script src="js/jquery.metisMenu.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<!-- Custom and plugin javascript -->
<link href="css/custom.css" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet"/>
<script src="js/custom.js"></script>

</head>
<body>

    
   
    <div id="wrapper">

               <form id="Form1" runat="server">
                   <div class="content-top">

                <div class="col-lg-12">
        <!--Kullanıcı adı--------------------------->
      <div class="form-group">
			<div class="row">
				
                <div class="col-md-2">
				<asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı :"></asp:Label>
				</div>

				<div class="col-md-5">
					 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Bu Alan Boş Geçilemez"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label2" runat="server" Text="@personel.com"></asp:Label>
				</div>
                
                <div class="col-md-5"></div>
			</div>
          <div class="clearfix"></div>
		</div>
        <!--Kullanıcı adı--------------------------->


        <!--Tc Kimlik No--------------------------->
        <div class="form-group">
			<div class="row">
				
                <div class="col-md-2">
				<asp:Label ID="Label3" runat="server" Text="TC Kimlik No :"></asp:Label>
                </div>

				<div class="col-md-5">
					 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
				     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="Bu Alan Boş Geçilemez"></asp:RequiredFieldValidator>
				     <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" MaximumValue="11" MinimumValue="11" ErrorMessage="Girilen değer 11 haneli olmalı"></asp:RangeValidator>
				</div>
                
                <div class="col-md-5"></div>
			</div>
            <div class="clearfix"></div>
		</div>
        <!--Kullanıcı adı--------------------------->

        <!--Ad--------------------------->
       <div class="form-group">
			<div class="row">
				
                <div class="col-md-2">
				<asp:Label ID="Label4" runat="server" Text="Ad Soyad :"></asp:Label>
             </div>

				<div class="col-md-5">
					 <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ErrorMessage="Bu Alan Boş Geçilemez"></asp:RequiredFieldValidator>
                </div>
                
                <div class="col-md-5"></div>
			</div>
		</div>
        <!--Ad--------------------------->


        <!--telefon --------------------------->
           <div class="form-group">
			<div class="row">
				
                <div class="col-md-2">
				<asp:Label ID="Label10" runat="server" Text="Telefon No :"></asp:Label>
         </div>

				<div class="col-md-5">
                   <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" runat="server" ErrorMessage="Bu Alan Boş Geçilemez"></asp:RequiredFieldValidator>

                   <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Telefon numarası 11 haneli olmalı"></asp:RangeValidator>

               </div>
                
                <div class="col-md-5"></div>
			</div>
		</div>
        <!--telefon --------------------------->


         
        <!--Şifre --------------------------->
         
           <div class="form-group">
			<div class="row">
				
                <div class="col-md-2">
				<asp:Label ID="Label5" runat="server" Text="Şifre :"></asp:Label>
        </div>

				<div class="col-md-7">
					 <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
       
				     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox4" runat="server" ErrorMessage="Bu Alan Boş Geçilemez"></asp:RequiredFieldValidator>
       
				     <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox5" MaximumValue="12" ErrorMessage="RangeValidator"></asp:RangeValidator>
       
				</div>
                
                <div class="col-md-3"></div>
			</div>
		</div>
        <!--Şifre son --------------------------->
         

        <!--Güvenlik soru --------------------------->         
           <div class="form-group">
			<div class="row">
				
                <div class="col-md-2">
				<asp:Label ID="Label7" runat="server" Text="Güvenlik Sorusu :"></asp:Label>
        </div>

				<div class="col-md-5">
					<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="guvenlik_sorusu" DataValueField="guvenlik_sorusu"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webConnectionString %>" SelectCommand="SELECT * FROM [guvenlik_sorusu]"></asp:SqlDataSource>
        </div>
                
                <div class="col-md-5"></div>
			</div>
		</div>

        <!--Son --------------------------->
         
        <!--Cevap --------------------------->
         
           <div class="form-group">
			<div class="row">
				
                <div class="col-md-2">
				<asp:Label ID="Label8" runat="server" Text="Güvenlik Sorusu Cevap:"></asp:Label>
        </div>

				<div class="col-md-6">
					 <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
       
				     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox6" runat="server" ErrorMessage="Bu Alan Boş Geçilemez"></asp:RequiredFieldValidator>
       
				</div>
                
                <div class="col-md-4"></div>
			</div>
		</div>
        <!--Son --------------------------->



           <div class="form-group">
			<div class="row">
				
                <div class="col-md-2">
				    <asp:Label ID="Label11" runat="server" Text="Adres Bilgisi :"></asp:Label>
				</div>

				<div class="col-md-2">
                    <asp:TextBox ID="TextBox7" runat="server" placeHolder="Adres Başlığı"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox7" runat="server" ErrorMessage="Bu Alan Boş Geçilemez"></asp:RequiredFieldValidator>
                    <br />
                </div>

                <div class="col-md-8">
                    <asp:TextBox ID="TextBox8" runat="server" placeHolder="Adres Açıklaması" Height="114px" TextMode="MultiLine" Width="204px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBox8" runat="server" ErrorMessage="Bu Alan Boş Geçilemez"></asp:RequiredFieldValidator>
                </div>
                
                
			</div>
		</div>
         
        <!--Yetki --------------------------->
        <!--
         <div class="form-group">
			<div class="row">
				
                <div class="col-md-2">
				<asp:Label ID="Label9" runat="server" Text="Yetki :"></asp:Label>
                 </div>

				<div class="col-md-2">
					 <asp:RadioButton ID="RadioButton1" GroupName="1" runat="server" Text="Admin" />
                     </div>
                <div class="col-md-3">
                     <asp:RadioButton ID="RadioButton2" GroupName="1"  runat="server" Text="Mağaza Sorumlusu" />
     
				</div>
                
                <div class="col-md-5"></div>
			</div>
		</div>
        <!--Son --------------------------->
         

        <!--Durum --------------------------->
         
        <div class="form-group">
			<div class="row">
				
                <div class="col-md-2">
				<asp:Label ID="Label6" runat="server" Text="Kullanıcı Durumu :"></asp:Label>
                 </div>

				<div class="col-md-2">
					<asp:CheckBox ID="CheckBox1" runat="server" Text="Aktif" Checked="True"/> 
                </div>
                
                <div class="col-md-8"></div>
			</div>
		</div>
        <!--Son --------------------------->
         
        <!--Durum --------------------------->
         
     
        <!--Son --------------------------->


        <div class="form-group">
			<div class="row">
				
                <div class="col-md-6">
				 <asp:Button ID="Button1" runat="server" Text="KAYDET" OnClick="Button1_Click"  />
                </div>

				
                
                <div class="col-md-6"></div>
			</div>
		</div>

</div>
                                                                       <div class="clearfix"> </div>

                    </div>
                    </form>
                 </div>
   
       
    <script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="js/bootstrap.min.js"> </script>
</body>
</html>