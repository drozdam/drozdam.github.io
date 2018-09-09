using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MembershipForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["memberAccept"] != "1")
        {
            Response.Redirect("Membership.aspx");
        }

        //confirmation message
        if (!IsPostBack) btnLnkAgree.Attributes.Add("onclick", "return confirm('Are you ready to submit your information?');");
    }
    protected void btnLnkAgree_Click(object sender, EventArgs e)
    {
        //send email to bark n fly staff
        MailHelper.SendMailMessage("registration@barknfly.ca", "BarkNFlyDDC@gmail.com", "matthew.drozda@gmail.com", null, "Bark N Fly Registration: " + txtOwners.Text, buildEmailBody());
        //send email to new member
        MailHelper.SendMailMessage("registration@barknfly.ca", txtEmail.Text, "matthew.drozda@gmail.com", null, "Bark N Fly Registration", buildEmailBodyRegistration());
        Session["memberSuccess"] = "1";
        Response.Redirect("MembershipSuccess.aspx");
        //Response.Write(buildEmailBody());
    }
    protected string buildEmailBody()
    {
        /*build email using data from form*/
        string strEmail = @"<style type='text/css'>td{width:300px;}</style><table>
            <tr><td colspan='2'>Contact Information</td></tr>
            <tr><td>Name of owners</td><td>" + txtOwners.Text + @"</td></tr>
            <tr><td>Main Phone</td><td>" + txtMainPhone.Text + @"</td></tr>
            <tr><td>Work Phone</td><td>" + txtWorkPhone.Text + @"</td></tr>
            <tr><td>Alternate Phone</td><td>" + txtAltPhone.Text + @"</td></tr>
            <tr><td>Email Address</td><td>" + txtEmail.Text + @"</td></tr>
            <tr><td>Address</td><td>" + txtAddress.Text + @"</td></tr>
            <tr><td>City</td><td>" + txtCity.Text + @"</td></tr>
            <tr><td>Postal Code</td><td>" + txtPostalCode.Text + @"</td></tr>
            <tr><td colspan='2'>Emergency Contact Information</td></tr>
            <tr><td>Vet's Name</td><td>" + txtVet.Text + @"</td></tr>
            <tr><td>Vet's Phone</td><td>" + txtVetPhone.Text + @"</td></tr>
            <tr><td>Emergency Contact</td><td>" + txtEmergencyContact.Text + @"</td></tr>
            <tr><td>Emergency Contact Phone</td><td>" + txtEmergencyPhone.Text + @"</td></tr>       
            <tr><td>Authorized Pickup Names</td><td>" + txtAuthorized.Text + @"</td></tr>
            <tr><td colspan='2'>Information About Your Dog</td></tr>
            <tr><td>Name of dogs</td><td>" + txtDogName.Text + @"</td></tr>
            <tr><td>Breed</td><td>" + txtBreed.Text + @"</td></tr>
            <tr><td>Sex</td><td>" + ddSex.SelectedValue + @"</td></tr>
            <tr><td>Spayed/Neutered</td><td>" + ddFixed.SelectedValue + @"</td></tr>
            <tr><td>Birthday</td><td>" + txtBirthday.Value + @"</td></tr>
            <tr><td>Age</td><td>" + txtAge.Text + @"</td></tr>
            <tr><td>Known Commands</td><td>" + txtCommands.Text + @"</td></tr>
            <tr><td>Feeding</td><td>" + txtFed.Text + @"</td></tr>
            <tr><td>Feeding Instructions</td><td>" + txtFeedingInstructions.Text + @"</td></tr>
            <tr><td>Allergies/Medical Conditions</td><td>" + txtAllergies.Text + @"</td></tr>
            <tr><td>Aggression</td><td>" + ddAggression.SelectedValue + @"</td></tr>
            <tr><td>Does your dog get along with all dogs</td><td>" + ddFriendly.SelectedValue + @"</td></tr>
            <tr><td>Other Information</td><td>" + txOther.Text + @"</td></tr>
            <tr><td colspan='2'>A Few More Things</td></tr>
            <tr><td>Where did you hear about us?</td><td>" + txtDDWhere.SelectedValue + @"</td></tr>
            <tr><td>Referrers Name</td><td>" + txtReferredBy.Text + @"</td></tr>
            <tr><td>Other Referral</td><td>" + txtOtherReferral.Text + @"</td></tr>
            </table>";
        return strEmail;
    }
    protected string buildEmailBodyRegistration()
    {
        string strEmail = @"Thanks for signing up! 
                <br/><br/>You will hear from Bark N Fly staff within the next couple of days or sooner.
                <br/><br/>If you have any questions or concerns please contact us at BarkNFlyDDC@gmail.com.";
        return strEmail;
    }
}