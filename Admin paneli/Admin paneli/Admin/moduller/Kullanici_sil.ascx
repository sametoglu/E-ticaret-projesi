<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Kullanici_sil.ascx.cs" Inherits="Admin.moduller.Kullanici_sil" %>
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

               <form id="Form2" runat="server">
                   <div class="content-top">

                <div class="col-lg-12">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="id">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" SelectText="SİL" />
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="e_mail" HeaderText="e_mail" SortExpression="e_mail" />
                <asp:BoundField DataField="tc" HeaderText="tc" SortExpression="tc" />
                <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
                <asp:CheckBoxField DataField="durum" HeaderText="durum" SortExpression="durum" />
            </Columns>
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webConnectionString %>" SelectCommand="SELECT [id], [e_mail], [tc], [full_name], [tel], [durum] FROM [kullanici]"></asp:SqlDataSource>


</div>
                                                                       <div class="clearfix"> </div>

                    </div>
                    </form>
                 </div>
</body>
 </html>