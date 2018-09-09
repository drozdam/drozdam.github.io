<%@ Page Title="Virtual Tour" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VirtualTour.aspx.cs" Inherits="VirtualTour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row headerRow pagePadding">
        <div class="content">
            <h1>Virtual Tour</h1>

            <div style="margin:0 0 50px 0;overflow:hidden;">
                <div class="imgVT"><img src="images/Tour/greenShed.jpg" style="width:425px;" />Dogs have the option of playing in a clean outdoor area</div> 
                <div class="imgVT"><img src="images/Tour/shed_Small.jpg" style="width:425px;" />Or they can relax inside the air conditioned and heated trailer</div>                      
               
            </div>
            <div style="clear:both;" />  

            <h2><span class="wrapH2">Fun Times At Bark N Fly</span></h2>
            <div class="thumbnailGrid">
            <asp:DataList runat="server" ID="thumbnails" RepeatColumns="5" >
                <ItemTemplate > 
                 <a runat="server" rel="lightbox[thumb]" href='<%# Eval("full") %>' title='<%# Eval("caption") %>'>          
                <img class="imgThumb" runat="server" src="" data-original='<%# Eval("thumb") %>'  /> 
                     </a>        
                </ItemTemplate> 
                </asp:DataList>
            </div>
                    </div>
        </div>

    <link href="App_Themes/Theme1/lightbox.css" rel="stylesheet" />
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.js"></script>
    <script src="Script/lightbox.js"></script>
    <script src="Script/lazyload.js"></script>
    <script type="text/javascript"> $(".imgThumb").lazyload(); </script>
   
</asp:Content>


