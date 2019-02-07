<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="urun_ekle.ascx.cs" Inherits="Admin.moduller.urun_ekle" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Minimal an Admin Panel Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
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
<script src="js/custom.js"></script>


</head>
<body>  
    <div id="wrapper">
        <form id="form1" runat="server">
            <div class="content-top">

                <div class="col-md-6">
                     <asp:Image ID="Image1"  runat="server" style="height: 100px; width: 150px" />
                                                                                <asp:Label ID="Label10" runat="server" Text="Bu Resim Ana Resim Olacaltır." ></asp:Label>
                                         <asp:FileUpload ID="FileUpload1" ViewStateMode="Inherit" runat="server"  />

                     <asp:Image ID="Image2"  runat="server" style="height: 100px; width: 150px" />

                                         <asp:FileUpload ID="FileUpload2" ViewStateMode="Inherit" runat="server" />
                     <asp:Image ID="Image3"  runat="server" style="height: 100px; width: 150px" />
                                         <asp:FileUpload ID="FileUpload3" ViewStateMode="Inherit" runat="server"  />
                     <asp:Image ID="Image4"  runat="server" style="height: 100px; width: 150px" />
                                         <asp:FileUpload ID="FileUpload4" ViewStateMode="Inherit" runat="server"  />


                    <asp:Button ID="btn_resim" OnClick="btn_resim_Click" runat="server" Text="Goster" />
                    <asp:Label ID="Labelresim" runat="server" ></asp:Label>
                    <asp:Label ID="Label8" Text="resim adi : " runat="server" ></asp:Label>
                    <asp:TextBox ID="tb_resim_adi"  runat="server"></asp:TextBox>
                    <asp:Button runat="server" OnClick="urun_ekle_Click" type="submit" class="btn btn-default" Text="Ekle" />
                     </div>

            <div class="col-md-6">
                <div class="col-md-3">
                    <ul class=" nav_1">

                    <li class="dropdown">
                        <asp:Label ID="Label3" runat="server" Text="Renk" class="dropdown-toggle dropdown-at" data-toggle="dropdown" ><span class=" name-caret">Kategori<i class="caret"></i></span></asp:Label>
                        <asp:DropDownList  ID="kategori_list" runat="server" >

                        </asp:DropDownList>

                        
		            </li>
                   </ul>

                   <ul class=" nav_1">

                    <li class="dropdown">
                        <asp:Label ID="Label1" runat="server" Text="Renk" class="dropdown-toggle dropdown-at" data-toggle="dropdown" ><span class=" name-caret">Renk<i class="caret"></i></span></asp:Label>
                        <asp:DropDownList  ID="renk_list" runat="server" >
                            <asp:ListItem>Sarı</asp:ListItem>
                            <asp:ListItem>Mavi</asp:ListItem>
                            <asp:ListItem>Mor</asp:ListItem>
                            <asp:ListItem>Kırmızı</asp:ListItem>
                            <asp:ListItem>Turuncu</asp:ListItem>
                            <asp:ListItem>Yesil</asp:ListItem>
                            <asp:ListItem>Beyaz</asp:ListItem>
                        </asp:DropDownList>

                        
		            </li>
                   </ul>
                 	
                    <ul class=" nav_1">

                    <li class="dropdown">
                        <asp:Label ID="Label2" runat="server" Text="Renk" class="dropdown-toggle dropdown-at" data-toggle="dropdown" ><span class=" name-caret">Beden<i class="caret"></i></span></asp:Label>
                        <asp:DropDownList  ID="beden_list" runat="server" >
                            <asp:ListItem>S</asp:ListItem>
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem>L</asp:ListItem>
                            <asp:ListItem>XS</asp:ListItem>
                            <asp:ListItem>XL</asp:ListItem>
                        </asp:DropDownList>
		            </li>
                   </ul>
                   
                   <ul class="nav_1">
                       <li class="dropdown">
                           <asp:Label ID="Label7" runat="server" Text="Stok"></asp:Label>
                            <asp:TextBox ID="tb_stok" runat="server"></asp:TextBox>
                       </li>
                   </ul>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="Label4" runat="server" Text="Baslik"></asp:Label>
                    <asp:TextBox ID="tb_baslik" runat="server"></asp:TextBox>
                    <asp:Label ID="Label5" runat="server" Text="Fiyat"></asp:Label>
                    <asp:TextBox ID="tb_fiyat" runat="server"></asp:TextBox>
                    <asp:Label ID="Label6" runat="server" Text="Açıklama"></asp:Label>
                    <asp:TextBox ID="ta_aciklama" TextMode="MultiLine" cols="40" rows="2"  runat="server"></asp:TextBox>
                </div>

                
                
                
            </div>
            

                 
            
            <div class="clearfix"> </div>

                <div class="col-lg-12">
                <asp:GridView ID="grid_urunler"   runat="server">                   
                </asp:GridView>
                
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
