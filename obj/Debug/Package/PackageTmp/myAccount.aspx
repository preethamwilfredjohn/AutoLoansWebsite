<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMaster.master" AutoEventWireup="true" CodeBehind="myAccount.aspx.cs" Inherits="WAD.myAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
    <table style="width:100%; background-color:black">
        <tr>
            <td style="color:yellow; font-size:50px; width: 1099px;">My Account</td>
            <td style="color:yellow; font-size:30px">Welcome <asp:Label ID="name" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <table class="signin">
        <tr>
        <td style="font-size:30px; width: 774px;">
            <asp:Label ID="emailAddress" runat="server" Text="Account ID (Email Address)"></asp:Label>
        </td>
            <td style="font-size:30px; width: 774px;background-color:yellow">
<asp:Label ID="emaiAddressL" runat="server" Text="" ></asp:Label>        </td>
            </tr>
        <tr>
            <td style="font-size:30px; width: 774px;">
                <asp:Label ID="Label1" runat="server" Text="Account Application Type"></asp:Label>
            </td>
            <td style="font-size:30px; width: 774px; background-color:yellow">
                <asp:Label ID="accountApplicationType" runat="server" Text=""></asp:Label>        </td>
        </tr>
        <tr>
            <td style="font-size:30px; width: 774px;">
                <asp:Label ID="Label3" runat="server" Text="Primary Loan Purpose"></asp:Label>
            </td>
            <td style="font-size:30px; width: 774px; background-color:yellow">
                <asp:Label ID="primaryLoanPurpose" runat="server" Text=""></asp:Label>        </td>
        </tr>
        <tr>
            <td style="font-size:30px; width: 774px;">
                <asp:Label ID="Label5" runat="server" Text="Loan Amount"></asp:Label>
            </td>
            <td style="font-size:30px; width: 774px; background-color:yellow">
                <asp:Label ID="loanAmount" runat="server" Text=""></asp:Label>        </td>
        </tr>
        <tr>
            <td style="font-size:30px; width: 774px;">
                <asp:Label ID="Label7" runat="server" Text="Loan Term(months)"></asp:Label>
            </td>
            <td style="font-size:30px; width: 774px; background-color:yellow">
                <asp:Label ID="loanTerm" runat="server" Text=""></asp:Label>        </td>
        </tr>
        <tr>
            <td style="font-size:30px; width: 774px;">
                <asp:Label ID="Label9" runat="server" Text="Payment Method"></asp:Label>
            </td>
            <td style="font-size:30px; width: 774px; background-color:yellow">
                <asp:Label ID="paymentMethod" runat="server" Text=""></asp:Label>        </td>
        </tr>
    </table>
    <table style="width:100%">
        <tr>
            <td><asp:Button ID="editPersonelDetails" runat="server" Text="Edit Personel Details" Height="46px" Width="465px" Font-Bold ="true" Font-Size ="30px" BackColor="#006600" ForeColor="White" OnClick="editPersonelDetails_Click"/></td>
            <td><asp:Button ID="viewAccountDetails" runat="server" Text="View Account Details" Height="46px" Width="465px" Font-Bold ="true" Font-Size ="30px" BackColor="#006600" ForeColor="White" OnClick="viewAccountDetails_Click"/></td>
            <td><asp:Button ID="logOut" runat="server" Text="Log Out" Height="46px" Width="465px" Font-Bold ="true" Font-Size ="30px" BackColor="#006600" ForeColor="White" OnClick="logOut_Click" OnClientClick="Confirm()"/></td>
        </tr>
    </table>
    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want log out?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
</asp:Content>
