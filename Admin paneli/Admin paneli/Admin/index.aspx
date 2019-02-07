<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Admin.index" %>

<!DOCTYPE html>

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

<!----->
        <nav class="navbar-default navbar-static-top" role="navigation">
             <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>

                </button>
               <h1> <a class="navbar-brand" href="index.aspx">Admin</a></h1>         
			   </div>
		    <div class="drop-men" >
		        <ul class=" nav_1">
		        </ul>
		     </div>
			<div class="clearfix">
       
     </div>
	  
		    <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
				
                    <li>
                        <a href="index.aspx" class=" hvr-bounce-to-right"><i class="fa fa-dashboard nav_icon "></i><span class="nav-label">Admin</span> </a>
                    </li>
                   
                    <li>
                        <a href="urunler.aspx" class=" hvr-bounce-to-right"><i class="fa fa-indent nav_icon"></i> <span class="nav-label">Urunler</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="index.aspx?ad=urun_ekle" class=" hvr-bounce-to-right"> <i class="material-icons">&#xE145;</i>Ekle</a></li>
                            
                            <li><a href="index.aspx?ad=urun_duzenle" class=" hvr-bounce-to-right"><i class="material-icons">&#xE3C9;</i>Duzenle</a></li>
			
						    <li><a href="index.aspx?ad=urun_sil" class=" hvr-bounce-to-right"><i class="material-icons">&#xE872;</i>Sil</a></li>
                            						    
                            <li><a href="index.aspx?ad=stok" class=" hvr-bounce-to-right"><i class="material-icons">assignment_turned_in</i>Stok Sorgula</a></li>

					   
                        </ul>
                    </li>
					 <li>
                        <a href="kullanici.aspx" class=" hvr-bounce-to-right"><i class="fa fa-indent nav_icon"></i> <span class="nav-label">Kullanicilar</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="index.aspx?ad=Kullanici_ekle" class=" hvr-bounce-to-right"> <i class="material-icons">&#xE145;</i>Ekle</a></li>
                            
                            <li><a href="index.aspx?ad=Kullanici_duzenle" class=" hvr-bounce-to-right"><i class="material-icons">&#xE3C9;</i>Duzenle</a></li>
			
						    <li><a href="index.aspx?ad=Kullanici_sil" class=" hvr-bounce-to-right"><i class="material-icons">&#xE872;</i>Sil</a></li>
					   </ul>
                    </li>
                    
                    <li>
                        <a href="Siparis.aspx" class=" hvr-bounce-to-right"><i class="fa fa-indent nav_icon"></i> <span class="nav-label">Siparisler</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="index.aspx?ad=Siparis_onay" class=" hvr-bounce-to-right">  <i class="material-icons">done</i>Onayla</a></li>
                            
                            
						   

                        </ul>
                    </li>
                     <li>
                        <a href="index.aspx?ad=istatistik" class=" hvr-bounce-to-right"><i class=" fa fa-signal nav_icon"></i> <span class="nav-label">İstatistik</span></a>
                        
                    </li>
                    
                   
                    <li>
                        <a href="giris.aspx" onclick="cıkıs_click"  class=" hvr-bounce-to-right"><i class="fa fa-sign-out nav_icon"></i><span class="nav-label">Cıkıs</span></a>
                    </li>
                   
                    
                </ul>
            </div>
			</div>
        </nav>
        <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">

		<!--content-->
		<div class="content-top">
			<div class="col-lg-12">
                	
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                	
                <div class="clearfix"> </div>
			</div>
		<div class="clearfix"> </div>
		</div>	
		</div>
		</div>
		<div class="clearfix"> </div>
       </div>
    
    <script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="js/bootstrap.min.js"> </script>
</body>
</html>
