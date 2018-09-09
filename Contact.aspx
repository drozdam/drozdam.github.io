<%@ Page Title="Contact" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row headerRow pagePadding">
        <div class="content">
            <h1>We Look Forward To Hearing From You</h1>
            <h2><span class="wrapH2">Contact Information</span></h2>
            
            <div itemscope itemtype="http://schema.org/LocalBusiness" class="contactInfo">
            <ul>
                <li style="font-size:20px;"><span itemprop="name">Bark 'N Fly Dog Day Care Center</span></li>               
                <li>Owner & Dog Lover: <span itemprop="fouder">Robyn Chapman</span></li>
                <li>BarkNFlyDDC@Gmail.com</li>
            </ul>
                <div itemscope itemtype="http://schema.org/Addrss">
                    <ul>
                        <li><span itemprop="streetAddress">1265 Burnhamthorpe Road East</span></li>
                        <li><span  itemprop="addressLocality">Oakville</span>, <span itemprop="addressRegion">Ontario</span></li>
                        <li>L6H 7B3</li>
                        <li><span  itemprop="telephone">(647)-542-2275</span></li>
                    </ul>
                </div>
                <ul>
                    <li><meta itemprop="openingHours" content="Mo-Fr 7:00-18:30">Hours Of Operation<br /> Monday - Friday 7:00AM - 6:30PM</li>
                </ul>
            </div>
           <ul>
               <li><a href="https://www.facebook.com/BarknFlyDoggieDaycare" target="_blank"><img src="images/Social/facebook.png" /></a>
                            <a href="https://twitter.com/BarkNFlyDog" target="_blank"><img src="images/Social/twitter.png" /></a>
                   <a href="https://plus.google.com/114060291049035841214/about?hl=en" target="_blank"><img src="images/Social/gplus.png" /></a>
                   <a href="http://www.youtube.com/user/BarkNFly" target="_blank"><img src="images/Social/utube.png" /></a>
                        </li>
           </ul>

            <h2><span class="wrapH2">Driving Directions</span></h2>
            <p>We are located one minute east of Trafalgar on Burnhamthorpe.  Easily accessible from Mississauga and Burlington.</p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11573.69613215298!2d-79.73151170967368!3d43.51434957083871!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882b42b75ad2391b%3A0x742cde859b15674b!2sBark+N+Fly+Dog+Day+Care+Center!5e0!3m2!1sen!2s!4v1406935928975" width="850" height="350" frameborder="0" style="border:0"></iframe>     
    </div>
</asp:Content>

