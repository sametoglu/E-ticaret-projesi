<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Kullanici_duzenle.ascx.cs" Inherits="Admin.moduller.Kullanici_duzenle" %>
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

    <form id="Form1" runat="server" >
                   <div class="content-top">

                <div class="col-lg-12">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <Columns>
                <asp:BoundField DataField="e_mail" HeaderText="e_mail" SortExpression="e_mail" />
                <asp:BoundField DataField="tc" HeaderText="tc" SortExpression="tc" />
                <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
                <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                <asp:BoundField DataField="guvenlik_cevap" HeaderText="guvenlik_cevap" SortExpression="guvenlik_cevap" />
                <asp:CheckBoxField DataField="durum" HeaderText="durum" SortExpression="durum" />
                <asp:CommandField ButtonType="Button" DeleteText="" InsertText="" NewText="" SelectText="" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:webConnectionString %>" DeleteCommand="DELETE FROM [kullanici] WHERE [id] = @original_id AND (([e_mail] = @original_e_mail) OR ([e_mail] IS NULL AND @original_e_mail IS NULL)) AND (([tc] = @original_tc) OR ([tc] IS NULL AND @original_tc IS NULL)) AND (([full_name] = @original_full_name) OR ([full_name] IS NULL AND @original_full_name IS NULL)) AND (([tel] = @original_tel) OR ([tel] IS NULL AND @original_tel IS NULL)) AND (([sifre] = @original_sifre) OR ([sifre] IS NULL AND @original_sifre IS NULL)) AND (([guvenlik_id] = @original_guvenlik_id) OR ([guvenlik_id] IS NULL AND @original_guvenlik_id IS NULL)) AND (([guvenlik_cevap] = @original_guvenlik_cevap) OR ([guvenlik_cevap] IS NULL AND @original_guvenlik_cevap IS NULL)) AND (([durum] = @original_durum) OR ([durum] IS NULL AND @original_durum IS NULL))" InsertCommand="INSERT INTO [kullanici] ([e_mail], [tc], [full_name], [tel], [sifre], [guvenlik_id], [guvenlik_cevap], [durum]) VALUES (@e_mail, @tc, @full_name, @tel, @sifre, @guvenlik_id, @guvenlik_cevap, @durum)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [e_mail], [tc], [full_name], [tel], [sifre], [guvenlik_id], [guvenlik_cevap], [durum] FROM [kullanici]" UpdateCommand="UPDATE [kullanici] SET [e_mail] = @e_mail, [tc] = @tc, [full_name] = @full_name, [tel] = @tel, [sifre] = @sifre, [guvenlik_id] = @guvenlik_id, [guvenlik_cevap] = @guvenlik_cevap, [durum] = @durum WHERE [id] = @original_id AND (([e_mail] = @original_e_mail) OR ([e_mail] IS NULL AND @original_e_mail IS NULL)) AND (([tc] = @original_tc) OR ([tc] IS NULL AND @original_tc IS NULL)) AND (([full_name] = @original_full_name) OR ([full_name] IS NULL AND @original_full_name IS NULL)) AND (([tel] = @original_tel) OR ([tel] IS NULL AND @original_tel IS NULL)) AND (([sifre] = @original_sifre) OR ([sifre] IS NULL AND @original_sifre IS NULL)) AND (([guvenlik_id] = @original_guvenlik_id) OR ([guvenlik_id] IS NULL AND @original_guvenlik_id IS NULL)) AND (([guvenlik_cevap] = @original_guvenlik_cevap) OR ([guvenlik_cevap] IS NULL AND @original_guvenlik_cevap IS NULL)) AND (([durum] = @original_durum) OR ([durum] IS NULL AND @original_durum IS NULL))">
          
            <InsertParameters>
                <asp:Parameter Name="e_mail" Type="String" />
                <asp:Parameter Name="tc" Type="String" />
                <asp:Parameter Name="full_name" Type="String" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="sifre" Type="String" />
                <asp:Parameter Name="guvenlik_id" Type="Int32" />
                <asp:Parameter Name="guvenlik_cevap" Type="String" />
                <asp:Parameter Name="durum" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="e_mail" Type="String" />
                <asp:Parameter Name="tc" Type="String" />
                <asp:Parameter Name="full_name" Type="String" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="sifre" Type="String" />
                <asp:Parameter Name="guvenlik_id" Type="Int32" />
                <asp:Parameter Name="guvenlik_cevap" Type="String" />
                <asp:Parameter Name="durum" Type="Boolean" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_e_mail" Type="String" />
                <asp:Parameter Name="original_tc" Type="String" />
                <asp:Parameter Name="original_full_name" Type="String" />
                <asp:Parameter Name="original_tel" Type="String" />
                <asp:Parameter Name="original_sifre" Type="String" />
                <asp:Parameter Name="original_guvenlik_id" Type="Int32" />
                <asp:Parameter Name="original_guvenlik_cevap" Type="String" />
                <asp:Parameter Name="original_durum" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />


                        </div>
                                                                       <div class="clearfix"> </div>

                    </div>
                    </form>
                 </div>
</body>
 </html>