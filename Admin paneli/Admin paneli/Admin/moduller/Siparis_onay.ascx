<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Siparis_onay.ascx.cs" Inherits="Admin.moduller.Siparis_ekle" %>
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
    
       
    
    <script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="js/bootstrap.min.js"> </script>
       <div id="wrapper">

               <form runat="server">
                   <div class="content-top">

                <div class="col-lg-12">


            <asp:GridView ID="gridviewSiparisOnayla" runat="server" AutoGenerateColumns="False" DataKeyNames="siparisid" OnRowDeleting="gridviewSiparisOnayla_RowDeleting" OnRowUpdating="gridviewSiparisOnayla_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Sipariş Id">
                        <ItemTemplate>
                            <asp:Label ID="lblSiparisId" runat="server" Text='<%# Bind("siparisid") %>' ForeColor="Black"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Müşteri Adı">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblMusteriAdi" runat="server" Text='<%# Bind("musteriadi") %>' ForeColor="Black"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ÜrünAdı">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblUrunAdi" runat="server" Text='<%# Bind("urunadi") %>' ForeColor="Black"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Açıklama">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblAciklama" runat="server" Text='<%# Bind("aciklama") %>' ForeColor="Black"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fiyat">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblFiyat" runat="server" Text='<%# Bind("fiyat") %>' ForeColor="Black"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Satış Miktarı">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblSatisMiktari" runat="server" Text='<%# Bind("satismiktari") %>' ForeColor="Black"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Update" OnClientClick="return confirm('Onaylamak İstediğinizden Emin misiniz ?')" Text="Onayla" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('İptal Etmek İstediğinizden Emin misiniz ?')" Text="İptal Et" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>


            </div>
                                                                       <div class="clearfix"> </div>

                    </div>
                    </form>
                 </div>
        
</body>
</html>
