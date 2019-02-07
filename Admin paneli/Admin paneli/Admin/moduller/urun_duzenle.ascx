<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="urun_duzenle.ascx.cs" Inherits="Admin.moduller.urun_duzenle" %>
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

                <div class="col-lg-12">
                <asp:TextBox type="Text" ID="txt_ara"  runat="server" value="Ara..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Ara...';}"></asp:TextBox>
                
                <asp:Button type="Submit"  OnClick="ara_Click" runat="server" class="fa fa-search"/>

                                <div class="clearfix"> </div>

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
                           <asp:Button ID="btn_onay" runat="server" OnClick="btn_onay_Click" Text="Onayla" />
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
                <div class="col-md-6">
                    <asp:GridView ID="grid_urunler" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"  OnSelectedIndexChanged="grid_urunler_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" EditText="" InsertText="" NewText="" SelectText="Sec" ShowCancelButton="False" ShowSelectButton="True" UpdateText="Guncelle" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
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
