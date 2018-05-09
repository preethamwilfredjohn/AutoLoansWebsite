<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMaster.master" AutoEventWireup="true" CodeBehind="verifyAccountExistence.aspx.cs" Inherits="WAD.verifyAccountExistence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
    <p style =" font-size: 75px; background-color:black; color: aqua; margin:0">Verify Account Existence</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <table class="loanInfor">
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Enter Email Address" ControlToValidate="emailVerification" ForeColor="#FF3300" Font-Size="20px"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Enter appropriate email address" ControlToValidate="emailVerification" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>      
            <td>
                <asp:Label ID="enterEmail" runat="server" Font-Size ="30px">*Enter Your Email Address</asp:Label>
            </td>
            <td>
                <asp:Label ID="accountCheck" runat="server" Font-Size ="30px" ForeColor="#FF3300">Do You already have an account with us?</asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="emailVerification" runat="server" Height="46px" Width="406px" CausesValidation="True" Font-Size="25px" OnTextChanged="emailVerification_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="checkAccountExistence" runat="server" Text="Check Account Existence" Height="46px" Width="465px" Font-Bold ="true" Font-Size ="30px" BackColor="#006600" ForeColor="White" OnClick="checkAccountExistence_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>
