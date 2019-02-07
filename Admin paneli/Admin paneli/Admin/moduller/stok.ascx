<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="stok.ascx.cs" Inherits="Admin.moduller.stok" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<title>Stok</title>
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
        <form id="form1" runat="server">
            <div class="content-top">
            <div class="col-md-6">
                <asp:GridView ID="grid_stok"  runat="server">                   
                </asp:GridView>
            </div>
            <div class="col-md-6">
                <asp:TextBox type="Text" ID="txt_ara"  runat="server" value="Ara..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Ara...';}"></asp:TextBox>
                
                <asp:Button type="Submit"  OnClick="ara_Click"  runat="server" class="fa fa-search"/>
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
