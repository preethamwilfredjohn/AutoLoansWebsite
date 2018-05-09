<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMaster.master" AutoEventWireup="true" CodeBehind="recoverPassword.aspx.cs" Inherits="WAD.recoverPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
    <table style="width:100%; background-color:black">
        <tr>
            <td style="color:yellow; font-size:50px">Recover Password</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <table class="signin">
    <tr>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter the Account Email Address" ControlToValidate="emailAddressTB" ForeColor="#FF3300" Font-Size="20px"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Enter appropriate email address" ControlToValidate="emailAddressTB" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>    
        </td>
    </tr>
        <tr>
        <td style="font-size:30px; width: 774px;">
            <asp:Label ID="emailAddress" runat="server" Text="*Enter Account Email Address"></asp:Label>
        </td>
            <td style="font-size:30px; width: 774px;">
                <asp:TextBox ID="emailAddressTB"  Width="517px" Font-Size="25px" runat="server"></asp:TextBox>
        </td>
            </tr>
        <tr>
            <td>
                <asp:Button ID="cancel" runat="server" Text="Cancel" Height="46px" Width="465px" Font-Bold ="true" Font-Size ="30px" BackColor="#006600" ForeColor="White" CausesValidation="False" OnClick="cancel_Click" />
            </td>
            <td>
                <asp:Button ID="recoverB" runat="server" Text="Recover" Height="46px" Width="465px" Font-Bold ="true" Font-Size ="30px" BackColor="#006600" ForeColor="White" OnClick="recoverB_Click" />
            </td>
        </tr>
        </table>
</asp:Content>
