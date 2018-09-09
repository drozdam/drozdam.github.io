<%@ Page Title="Details" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row headerRow pagePadding">
        <div class="content">
            <h1>Details</h1>
            <p>Bark 'N Fly Dog Day Care Center has been operating in Oakville since 2002 and proudly caring for dogs from all over the GTA.  We are <a href="Contact.aspx">conveniently located</a>
                one minute North of Dundas on Trafalgar which makes us ideal for people living in Mississuaga, Burlington and Oakville.  If you're searching for a great dog
                day care in Mississauga give us a chance.  With our <a href="membership.asxp">free trial day</a> you and your dog can experience the safe and caring atmosphere
                we provide at Bark N Fly.
            </p>
            <p>At Bark'n Fly Doggy you can rest assured that your pet is having fun all day in a safe and clean environment. 
                Our day care helps give your dog the attention and the socialization skills that he or she needs. When you get home from work, 
                both you and your dog can rest!</p>

             <a href="DaycareManual.aspx" class="bigButton">Day care Manual</a>
            <div style="height:30px;">&nbsp;</div>
        <h2><span class="wrapH2">What We Offer</span></h2>
             <ul class="ulChecklist">
                <li>Heated and air conditioned indoor play area</li>  
                 <li>Large outdoor play area</li>
                 <li>Veterinarian on site</li>
                 <li>Located close to major highways (403 and QEW)</li>
                 <li>Supervision at all times</li>
                 <li>Dog messes are cleaned up immediately</li>
                 <li>No muddy spots for your dog to play in</li>
            </ul>   

            <h2><span class="wrapH2">Membership Checklist</span></h2>
            <ul class="ulChecklist">
                <li>Your dog must have a trial day (starts at 7 A.M.).  This trial day allows us to ensure your dog is compatible with the other dogs
                    and as a result we can provide a safe and friendly environment.
                </li>
                <li> Dog must be non-agressive and socially compatible with other dogs and people.  The safety of all the dogs at day care is our number one concern.</li> 
                <li> Be up to date on all vaccines, flea & heartworm prevention</li>
                <li> Dog must be four months or older</li>
                <li>Dog should be spayed/neutered by six months</li>     
            </ul>  

            <h2><span class="wrapH2">Price</span></h2>
                            <table class="priceList">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Full Day</th>
                                        <th>Half Day</th>
                                        <th>10 Day Pack</th>
                                        <th>20 Day Pack</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Single Dog</td>
                                        <td class="number">33</td>
                                        <td class="number">22</td>
                                        <td class="number">230</td>
                                        <td class="number">420</td>
                                    </tr>
                                     <tr>
                                        <td class="number">Two Dogs</td>
                                        <td class="number">44</td>
                                        <td class="number">33</td>
                                        <td class="number">340</td>
                                        <td class="number">460</td>
                                    </tr>
                                </tbody>
                            </table>          
           
 
           
        </div>
        </div>
</asp:Content>

