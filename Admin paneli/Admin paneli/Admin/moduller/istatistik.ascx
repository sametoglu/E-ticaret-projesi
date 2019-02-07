<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="istatistik.ascx.cs" Inherits="Admin.moduller.istatistik" %>
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
         
                   EN ÇOK SATAN ÜRÜNLER<br />


         
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="315px" Width="724px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="baslik" HeaderText="Başlık" SortExpression="baslik" />
                <asp:BoundField DataField="fiyat" HeaderText="Fiyat" SortExpression="fiyat" />
                <asp:BoundField DataField="satilan_adet" HeaderText="Satış Miktarı" SortExpression="satilan_adet" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
                
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webConnectionString %>" SelectCommand="SELECT [baslik], [fiyat], [satilan_adet] FROM [urunler] ORDER BY [satilan_adet] DESC"></asp:SqlDataSource>
                        </div>
                                                                       <div class="clearfix"> </div>

                    </div>
                    </form>
                 </div>

</body>
</html>