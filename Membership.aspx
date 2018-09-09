<%@ Page Title="Membership" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Membership.aspx.cs" Inherits="Membership" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row headerRow pagePadding">
        <div class="content">
            <h1>Signup For Dog Day Care</h1>
            <p>It's easy to signup, but please read the fine print first.</p>

            <h2><span class="wrapH2">Bark 'N Fly Dog Day Care Guardian Agreement</span></h2>

            <p>
            In agreement to use Bark N Fly's services, I hereby understand and agree to the following:
        </p>
                    
            <ol class="olFinePrint">
                <li>I understand that my dog(s) are involved in high-energy exercise while in the care of BarknFly Doggy Day care. 
                    I certify that my dog(s) are able to participate in such activity.</li>
                <li>I agree that BarknFly Doggy Day care will not be held liable or accountable in any way for property damage caused by my dog(s) while 
                    in the care of BarknFly Doggy Day care, its employees or agents regardless of whether or not my dog is on the premises of the aforementioned centre or not.</li>
                <li>In the event that BarknFly is unable to reach me at any of the hone numbers listed on the application form under home, work, alternative and emergency contact, BarknFly will treat any arising perceived or real medical problem in a manner that is deemed best by BarknFly Doggy Day care and/or Oakpark Pet Hospital. I will not hold BarknFly Doggy Day care or Oakpark Pet Hospital liable or responsible for the consequences of the aforementioned decision(s).</li>
                <li>I agree that BarknFly shall not be held responsible or liable for any illness, injury or death of my dog(s) before, during or after the aforementioned stay at the Doggy Day care howsoever caused regardless of whether such illness, injury or death is direct result of negligence on the part of BarknFly, its employees, agents, associates, affiliates, suppliers or customers.</li>
                <li>I agree to tell BarknFly Doggy Day care as soon as I know of any illnesses/conditions that my dog(s) develops that may put other members at risk from previous or current visits.</li>
            </ol>

                   
        <p>
             By clicking "Agree" I certify that I have read and understand all the information contained in the Doggy Day care Members Package, 
            Application form and this disclaimer as set forth on this and the preceding pages. I agree to abide by all the rules and regulations 
            herein and accept all terms, conditions and statements made in this agreement.
            
        </p>         

               
        <asp:LinkButton runat="server"  class="bigButton"
                         Text="Agree" ID="btnLnkAgree" OnClick="btnLnkAgree_Click" />             

              </div>

      </div>
        
</asp:Content>

