<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMaster.master" AutoEventWireup="true" CodeBehind="loanInformation.aspx.cs" Inherits="WAD.loanInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
    <table style ="width:100%; margin:0">
        <tr style ="text-align:center; background-color:darkslateblue; font-size:50px; color:aliceblue">
            <td>Loan Information
                <asp:Label ID="emailID" runat="server" Text="email" Visible="False"></asp:Label>
                <asp:Label ID="emailException" runat="server" Text="exception" Visible="True"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="loanInfor">
        <tr><td style="border: 1px solid white;" colspan="2">Basic Requirements</td></tr>
        <tr><td style="border: 1px solid white; height: 33px" >To Qualify</td>
            <td style="border: 1px solid white; height: 33px">You have Good Credit including sufficient income and assets to support your existing debt obligations and requested loan amount.</td>
        </tr>
        <tr><td rowspan="4" style="border: 1px solid white;">To Apply, You need to</td></tr>
        <tr><td style="border: 1px solid white;">Acknowledge receipt of our Statement on the Use of Electronic Records (click to review)</td></tr>
        <tr><td style="border: 1px solid white;">Agree to receive electronic records</td></tr>
        <tr><td style="border: 1px solid white;">Agree to use electronic signatures to sign your loan agreement</td></tr>
        <tr><td style="border: 1px solid white;">If Approved</td>
            <td style="border: 1px solid white;">Prior to receiving loan proceeds, you must have a valid Visa or MasterCard credit card (for verification purposes only, no charges will be applied).</td></tr>
        <tr><td style="border: 1px solid white;">Use of Loan Proceeds</td>
            <td style="border: 1px solid white;">Loans are only made to individuals, not to businesses. Loan proceeds must be used for the loan purpose selected on the application.</td></tr>
    </table> 
    <table class="loanInfor">
        <tr>
            <td style="width: 1470px">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Choose Application Type" ControlToValidate="applicationType" ForeColor="#FF3300" Font-Size="20px"></asp:RequiredFieldValidator>
               &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Choose Primary Loan Purpose" ControlToValidate="primaryLoanPurpose1" ForeColor="#FF3300" Font-Size="20px"></asp:RequiredFieldValidator>
               &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*Enter ZIP" ForeColor="#FF3300" Font-Size="20px" EnableTheming="True" ControlToValidate="zipTB"></asp:RequiredFieldValidator>
               &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*Enter Loan Amount" ControlToValidate="loanAmtTB" ForeColor="#FF3300" Font-Size="20px"></asp:RequiredFieldValidator>
               &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*Enter Loan Term" ControlToValidate="loanTermTB" ForeColor="#FF3300" Font-Size="20px"></asp:RequiredFieldValidator>
               &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*Choose Payment Method" ControlToValidate="paymentMethodRadio" ForeColor="#FF3300" Font-Size="20px"></asp:RequiredFieldValidator>            
               &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="*Enter appropriate Zip" ControlToValidate="zipTB" ForeColor="#FF3300" Font-Size="20px" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"></asp:RegularExpressionValidator>
               &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Enter appropriate loan Amount" ControlToValidate="loanAmtTB" ForeColor="#FF3300" Font-Size="20px" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
               &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Enter appropriate loan Term" ControlToValidate="loanTermTB" ForeColor="#FF3300" Font-Size="20px" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>                 
            </td>
            <td style="text-align:right"> 
                <asp:Button ID="edit" runat="server" Text="edit" OnClick="edit_Click" Enabled ="false" />

            </td>
        </tr>
    </table>   
    <table class="loanInfor">
        <tr><td style="width: 271px">Application Type</td>
            <td rowspan="2">By selecting 'Individual Application', you are applying for individual credit in your name and are relying on your income and assests and not the income or assests of another person as the basis for repayment of the credit request</td>
        </tr>
        <tr><td>
            <asp:DropDownList ID="applicationType" runat="server"  Width="350px" Font-Size="22px">
                    <asp:ListItem runat="server">Individual Application</asp:ListItem>                   
                    <asp:ListItem runat="server">Joint Application</asp:ListItem>                
                </asp:DropDownList> 
            </td>
        </tr>
        <tr><td style="width: 271px">Primary Loan Purpose</td>
            <td rowspan="2">If your application is approved, your credit profile will determine weather your loan will be unsecured or secured</td>
        </tr>
        <tr><td>
            <asp:DropDownList ID="primaryLoanPurpose1" runat="server" Width="350px" Font-Size="22px">
                    <asp:ListItem runat="server" >New Auto Purchase</asp:ListItem>                   
                    <asp:ListItem runat="server" >Used Auto Purchase from Dealer</asp:ListItem>  
                    <asp:ListItem runat="server">Auto Lease Buyout</asp:ListItem>
                    <asp:ListItem runat="server">Auto Loan Refinance</asp:ListItem>
                </asp:DropDownList>   
            </td></tr>
    </table>
    <table class="loanInfor">
        <tr>
            <td>*Zip Code</td>
            <td>*Loan Amount</td>
            <td>*Loan Term(Months)</td>
            <td>*Payment Method</td>
        </tr>
        <tr>
            <td><asp:TextBox ID="zipTB" runat="server" Width="350px" Font-Size="25px"></asp:TextBox>  </td>
            <td><asp:TextBox ID="loanAmtTB" runat="server" Width="350px" Font-Size="25px"></asp:TextBox></td>
            <td><asp:TextBox ID="loanTermTB" runat="server" Width="350px" Font-Size="25px"></asp:TextBox></td>
            <td><asp:RadioButtonList ID="paymentMethodRadio" runat="server" Width="490px" Font-Size="25px">
                        <asp:ListItem Selected="True">Auto Pay</asp:ListItem>                   
                        <asp:ListItem>Invoice</asp:ListItem>                
                 </asp:RadioButtonList></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
     <table class="tableproperty"> 
        <tr>
            <td>
                  <asp:CheckBox ID="agreement" runat="server" />
                <asp:Label ID="Label1" runat="server" Text="Label">I confirm that the information given in this form is true, complete and accurate.</asp:Label>                
            </td>
            <td>
                <asp:Button ID="submitLoanApplicaiton" runat="server" Text="Submit Loan Application" Font-Bold ="true" Font-Size ="30px" BackColor="#006600" ForeColor="White" OnClick="submitLoanApplicaiton_Click"/>
                <asp:Button ID="Button2" runat="server" Text="Go Back" Font-Bold ="true" Font-Size ="30px" BackColor="#006600" ForeColor="White" OnClick="Button2_Click" Visible="False"/>
            </td>
        </tr>
     </table>
</asp:Content>