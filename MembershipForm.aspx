<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MembershipForm.aspx.cs" Inherits="MembershipForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row headerRow pagePadding">
        <div class="content">
            <h1>Sign Up Form</h1>

             <h2><span class="wrapH2">Contact Information</span></h2>
            <table class="tblInput">
                   
                        <thead>
                            <tr><th></th></tr>
                            <tr><th></th></tr>                           
                        </thead>
                        <tbody>
                            <tr>
                                <td><span class="required">*</span>Name of owner(s)
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOwners"  CssClass="errorMsg" ErrorMessage="*" SetFocusOnError="true" />
                                </td>
                                <td><asp:TextBox runat="server" ID="txtOwners" CssClass="txtInput" /></td>
                            </tr>                           
                            <tr>
                                <td><span class="required">*</span>Main Phone
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMainPhone"  CssClass="errorMsg" ErrorMessage="*" SetFocusOnError="true" />
                                </td>
                                <td><asp:TextBox runat="server" ID="txtMainPhone" CssClass="txtInput" TextMode="Phone" /></td>
                            </tr>
                            <tr>
                                <td>Work Phone</td>
                                <td><asp:TextBox runat="server" ID="txtWorkPhone" CssClass="txtInput" /></td>
                            </tr>
                            <tr>
                                <td>Alternate Phone</td>
                                <td><asp:TextBox runat="server" ID="txtAltPhone" CssClass="txtInput" /></td>
                            </tr>
                            <tr>
                                <td><span class="required">*</span>Email Address
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"  CssClass="errorMsg" ErrorMessage="*" SetFocusOnError="true" />
                                </td>
                                <td><asp:TextBox runat="server" ID="txtEmail" CssClass="txtInput" />
                                    
                                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                        SetFocusOnError="true" CssClass="errorMsg" Display="Dynamic">Invalid Email Address</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="required">*</span>Address
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress"  CssClass="errorMsg" ErrorMessage="*" SetFocusOnError="true" />
                                </td>
                                <td><asp:TextBox runat="server" ID="txtAddress" CssClass="txtInput" /></td>
                            </tr>
                            <tr>
                                <td><span class="required">*</span>City
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCity"  CssClass="errorMsg" ErrorMessage="*" SetFocusOnError="true" />
                                </td>
                                <td><asp:TextBox runat="server" ID="txtCity" CssClass="txtInput" /></td>
                            </tr>
                            <tr>
                                <td><span class="required">*</span>Postal Code
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPostalCode"  CssClass="errorMsg" ErrorMessage="*" SetFocusOnError="true" />
                                </td>
                                <td><asp:TextBox runat="server" ID="txtPostalCode" CssClass="txtInput" /></td>
                            </tr>
                            </tbody>
                        </table>

                             <h2><span class="wrapH2">Emergency Information</span></h2>
            <table class="tblInput">
                <tbody>
                            <tr>
                                <td>Vet's Name</td>
                                <td><asp:TextBox runat="server" ID="txtVet" CssClass="txtInput" /></td>
                            </tr>
                            <tr>
                                <td>Vet's Phone</td>
                                <td><asp:TextBox runat="server" ID="txtVetPhone" CssClass="txtInput" /></td>
                            </tr>
                            <tr>
                                <td>Emergency Contact Name</td>
                                <td><asp:TextBox runat="server" ID="txtEmergencyContact" CssClass="txtInput" /></td>
                            </tr>
                            <tr>
                                <td>Emergency Contact Phone</td>
                                <td><asp:TextBox runat="server" ID="txtEmergencyPhone" CssClass="txtInput" /></td>
                            </tr>
                            
                            <tr>
                                <td>Authorized Pickup Names</td>
                                <td><asp:TextBox runat="server" ID="txtAuthorized" CssClass="txtInput" /></td>
                            </tr>
                </tbody>
                          </table>
             <h2><span class="wrapH2">About Your Dog</span></h2>
            <table class="tblInput">
                 <tr>
                                <td><span class="required">*</span>Name of dog(s)
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDogName"  CssClass="errorMsg" ErrorMessage="*" SetFocusOnError="true" />
                                </td>
                                <td><asp:TextBox runat="server" ID="txtDogName" CssClass="txtInput" /></td>
                            </tr>
                            <tr>
                                <td>Breed</td>
                                <td><asp:TextBox runat="server" ID="txtBreed" CssClass="txtInput" /></td>
                            </tr>
                            <tr>
                                <td>Sex</td>
                                <td><asp:DropDownList runat="server" ID="ddSex" CssClass="txtInput">
                                    <asp:ListItem Value="Male" Text="Male" />
                                    <asp:ListItem Value="Female" Text="Female" />
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Spayed/Neutered</td>
                                <td><asp:DropDownList runat="server" ID="ddFixed" CssClass="txtInput">
                                    <asp:ListItem Value="Yes" Text="Yes" />
                                    <asp:ListItem Value="No" Text="No" />
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td>Birthday</td>
                                <td><input runat="server" id="txtBirthday" class="txtInput datePicker" /></td>
                            </tr>
                             <tr>
                                <td>Age</td>
                                <td><asp:TextBox runat="server" ID="txtAge" CssClass="txtInput num" TextMode="Number" Text="1" /></td>
                            </tr>
                             <tr>
                                <td>Known Commands</td>
                                <td><asp:TextBox runat="server" ID="txtCommands" CssClass="txtInput" /></td>
                            </tr>
                             <tr>
                                <td>Does your dog need to be fed?</td>
                                <td><asp:TextBox runat="server" ID="txtFed" CssClass="txtInput" /></td>
                            </tr>
                             <tr>
                                <td>Feeding Instructions</td>
                                <td><asp:TextBox runat="server" ID="txtFeedingInstructions" CssClass="txtInput" /></td>
                            </tr>
                             <tr>
                                <td>Allergies/Medical Conditions</td>
                                <td><asp:TextBox runat="server" ID="txtAllergies" CssClass="txtInput" /></td>
                            </tr>
                             <tr>
                                <td><span class="required">*</span>Has your dog ever shown aggression
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddAggression"  CssClass="errorMsg" ErrorMessage="*" SetFocusOnError="true" />
                                </td>
                                <td><asp:DropDownList runat="server" ID="ddAggression" CssClass="txtInput">
                                    <asp:ListItem Value="" Text="" />
                                    <asp:ListItem Value="No" Text="No" />
                                    <asp:ListItem Value="Towards People" Text="Towards People" />
                                    <asp:ListItem Value="Towards Other Animals" Text="Towards Other Animals" />
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td><span class="required">*</span>Does your dog get along with all dogs
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddFriendly"  CssClass="errorMsg" ErrorMessage="*" SetFocusOnError="true" />
                                </td>
                                <td><asp:DropDownList runat="server" ID="ddFriendly" CssClass="txtInput">
                                    <asp:ListItem Value="" Text="" />
                                    <asp:ListItem Value="Yes" Text="Yes" />
                                    <asp:ListItem Value="No" Text="No" />
                                    </asp:DropDownList></td>
                            </tr>
                             <tr>
                                <td>Other Information</td>
                                <td><asp:TextBox runat="server" ID="txOther" CssClass="txtInput" TextMode="MultiLine" Rows="3"/></td>
                            </tr>
                </table>

             <h2><span class="wrapH2">Just A Few More Things...</span></h2>
            <table class="tblInput">
                <tr>
                                <td>Where did you hear about us?</td>
                                <td><asp:dropdownlist runat="server" ID="txtDDWhere" CssClass="txtInput">
                                        <asp:ListItem Value="" Text="" />
                                        <asp:ListItem Value="Flyer" Text="Flyer" />
                                        <asp:ListItem Value="Newspaper" Text="Newspaper" />
                                        <asp:ListItem Value="Sign" Text="Sign" />
                                        <asp:ListItem Value="Internet" Text="Internet" />
                                        <asp:ListItem Value="Another Customer" Text="Another Customer" />
                                    </asp:dropdownlist></td>
                            </tr>
                <tr>

                        <td>Other</td>
                        <td><asp:TextBox runat="server" ID="txtOtherReferral" CssClass="txtInput" TextMode="MultiLine" Rows="3"/></td>
                </tr>
                            <tr>
                                <td>Referrers Name</td>
                                <td><asp:TextBox runat="server" ID="txtReferredBy" CssClass="txtInput" /></td>
                            </tr>
            </table>

            <asp:LinkButton runat="server"  class="bigButton"
                         Text="Signup" ID="btnLnkAgree" OnClick="btnLnkAgree_Click" />                                
        </div>
    </div>


      <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
      <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
       
    <script type="text/javascript">
        (function ($) {
            $(document).ready(function () {       
                $(".datePicker").datepicker();
            });
        })(jQuery);


  </script>

</asp:Content>

