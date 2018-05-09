<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMaster.master" AutoEventWireup="true" CodeBehind="loanApplication.aspx.cs" Inherits="WAD.loanApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
    <table style ="width:100%; margin:0">
        <tr style ="text-align:center; background-color:darkslateblue; font-size:50px; color:aliceblue">
            <td>Loan Application</td>
        </tr>
    </table>
    <p style="font-size:30px; background-color:tan; margin:0"><b>Important Information About Procedures for Opening a New Account</b></p>
    <p style="background-color:tan; font-size:25px; margin:0">
  Federal law requires all financial institutions to obtain, verify, and record information that identifies each person who opens an account.
  <b>What this means for you?</b> When you open an account, we will ask for your name, address, date of birth and other information that will allow us to identify you. We may also ask to see your driver's license or other identifying documents.</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div style="background-color:darkviolet">
    <asp:Label ID="personalInfo" runat="server" Font-Bold="true" Font-Size="30px">Your Personal Information</asp:Label>
    </div>
    <div style="background-color:tan">
        <table style="width:100%">
            <tr>
                <td style="width: 1463px">                
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter Last Name" ControlToValidate="lNameTB" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Enter Email Address1" ControlToValidate="email1TB" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Enter Home Address" ControlToValidate="addressTB" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Enter City" ControlToValidate="cityTB" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Enter State" ControlToValidate="stateTB" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Enter ZIP" ControlToValidate="zipTB" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Enter Home Phone" ControlToValidate="homePhoneTB" ForeColor="#FF3300"></asp:RequiredFieldValidator>                
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*Enter Month at Current Address" ControlToValidate="MonthsTB" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*Choose Housing Status" ControlToValidate="housingStatusRadio" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*Enter SSN" ControlToValidate="ssnTB" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*Enter Date Of Birth" ControlToValidate="datePick" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*Enter Driver License" ControlToValidate="dlTB" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter Password" ControlToValidate="password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Enter appropriate email address" ControlToValidate="email1TB" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Enter appropriate email address" ControlToValidate="email2TB" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="*Enter appropriate state" ControlToValidate="stateTB" ForeColor="#FF3300" ValidationExpression="^(A[LKSZRAEP]|C[AOT]|D[EC]|F[LM]|G[AU]|HI|I[ADLN]|K[SY]|LA|M[ADEHINOPST]|N[CDEHJMVY]|O[HKR]|P[ARW]|RI|S[CD]|T[NX]|UT|V[AIT]|W[AIVY])$"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="*Enter appropriate zip" ControlToValidate="zipTB" ForeColor="#FF3300" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="*Enter appropriate home phone" ControlToValidate="homePhoneTB" ForeColor="#FF3300" ValidationExpression="\d{3}-\d{3}-\d{4}"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="*Enter appropriate year" ControlToValidate="yearsTB" ForeColor="#FF3300" ValidationExpression="^[0-9]{4}$"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="*Enter appropriate SSN" ControlToValidate="ssnTB" ForeColor="#FF3300" ValidationExpression="\d{3}-\d{2}-\d{4}"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="*Enter appropriate Driver License" ControlToValidate="dlTB" ForeColor="#FF3300" ValidationExpression="^[0-9]{4}$"></asp:RegularExpressionValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="*Enter appropriate Password" ControlToValidate="password" ForeColor="#FF3300" ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"></asp:RegularExpressionValidator>
                </td>
                <td style="text-align:right">                   
                    <asp:Button ID="edit" runat="server" Text="Update and Go Back" OnClick="edit_Click" Enabled="false" />
                </td>                
            </tr>
        </table>
        <table class="tableproperty">
            
            <tr>
                <td style="width: 503px">
                    <asp:Label ID="fName" runat="server" Text="*First Name" Font-Size ="25px"></asp:Label>
                </td>
                <td style="width: 715px">
                    <asp:Label ID="mInitials" runat="server" Text="Middle Initials" Font-Size ="25px"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lName" runat="server" Text="*Last Name" Font-Size="25px"></asp:Label>
                </td>                
            </tr>
            <tr>
                <td style="width: 503px">
                    <asp:TextBox ID="fNameTB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>                    
                </td>
                <td style="width: 715px">
                    <asp:TextBox ID="mInitialsTB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="lNameTB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="tableproperty">
            <tr>
                <td style="width: 1223px">
                    <asp:Label ID="email1" runat="server" Text="*Email Address 1" Font-Size ="25px"></asp:Label>                    
                </td>
                <td>
                    <asp:Label ID="email2" runat="server" Text="Email Address 2" Font-Size ="25px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 1223px">
                    <asp:TextBox ID="email1TB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="email2TB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="tableproperty">
            <tr>
                <td style="width: 1223px">
                    <asp:Label ID="address" runat="server" Text="*Home Street Address (no P.O. boxes)" Font-Size ="25px"></asp:Label>                    
                </td>
                <td>
                    <asp:Label ID="aptNo" runat="server" Text="Apt# (if applicable)" Font-Size ="25px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 1223px">
                    <asp:TextBox ID="addressTB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="aptNoTB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="tableproperty">            
            <tr>
                <td style="width: 503px">
                    <asp:Label ID="city" runat="server" Text="*City" Font-Size ="25px"></asp:Label>
                </td>
                <td style="width: 715px">
                    <asp:Label ID="state" runat="server" Text="*State" Font-Size ="25px"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="zip" runat="server" Text="*Zip" Font-Size="25px"></asp:Label>
                </td>                
            </tr>
            <tr>
                <td style="width: 503px">
                    <asp:TextBox ID="cityTB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>                    
                </td>
                <td style="width: 715px">
                    <asp:TextBox ID="stateTB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="zipTB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>
                </td>
            </tr>
        </table>
         <table class="tableproperty">                         
             <tr>
                 <td style="height: 12px; width: 503px;"></td>

                 <td colspan ="2" style="text-align:center; height: 12px;">
                     <asp:Label ID="Label1" runat="server" Text="*Time at Current Address"  Font-Size="25px"></asp:Label>
                 </td>
                 <td style="height: 12px"></td>
             </tr>
             <tr>
                <td style="width: 503px">
                    <asp:Label ID="homePH" runat="server" Text="*Home Phone(with area code)" Font-Size ="25px"></asp:Label>
                </td>
                <td style="width: 253px">
                    <asp:Label ID="years" runat="server" Text="Years" Font-Size ="25px"></asp:Label>
                    </td>
                 <td style="width: 456px">
                     <asp:Label ID="months" runat="server" Text="Months" Font-Size ="25px"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="housingStatus" runat="server" Text="*Housing Status" Font-Size="25px"></asp:Label>
                </td>                
            </tr>
            <tr>
                <td style="width: 503px">
                    <asp:TextBox ID="homePhoneTB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>                    
                </td>
                <td style="width: 253px">
                    <asp:TextBox ID="yearsTB" runat="server" Width="107px" Font-Size="25px"></asp:TextBox>
                 </td>
                <td style="width: 456px">
                    <asp:DropDownList ID="MonthsTB" runat="server"  Width="100px" Font-Size="22px">
                        <asp:ListItem runat="server">Jan</asp:ListItem>                   
                        <asp:ListItem runat="server">Feb</asp:ListItem>
                        <asp:ListItem runat="server">Mar</asp:ListItem>
                        <asp:ListItem runat="server">Apr</asp:ListItem>
                        <asp:ListItem runat="server">May</asp:ListItem>
                        <asp:ListItem runat="server">Jun</asp:ListItem>
                        <asp:ListItem runat="server">Jul</asp:ListItem>
                        <asp:ListItem runat="server">Aug</asp:ListItem>
                        <asp:ListItem runat="server">Sep</asp:ListItem>
                        <asp:ListItem runat="server">Oct</asp:ListItem>
                        <asp:ListItem runat="server">Nov</asp:ListItem>
                        <asp:ListItem runat="server">Dec</asp:ListItem>
                </asp:DropDownList>
                    
                </td>
                <td>
                <asp:RadioButtonList ID="housingStatusRadio" runat="server" Font-Size="25px">
                    <asp:ListItem >Rent</asp:ListItem>
                    <asp:ListItem>Own</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
            </tr>
        </table>
        <table class="tableproperty">
            
            <tr>
                <td style="width: 503px">
                    <asp:Label ID="ssn" runat="server" Text="*Social Security (9 digits)" Font-Size ="25px"></asp:Label>
                </td>
                <td style="width: 713px">
                    <asp:Label ID="dob" runat="server" Text="*Date of Birth" Font-Size ="25px"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="dl" runat="server" Text="*Driver's License (Last 4 digits)" Font-Size="25px"></asp:Label>
                </td>                
            </tr>
            <tr>
                <td style="width: 503px">
                    <asp:TextBox ID="ssnTB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>                    
                </td>
                <td style="width: 713px">
                    <input id=datePick type="date" runat="server" name="datepicker" style="font-size:25px" />
                </td>
                <td>
                    <asp:TextBox ID="dlTB" runat="server" Width="400px" Font-Size="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="*Password" Font-Size ="25px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="password" runat="server" Width="400px" Font-Size="25px" TextMode="Password" AutoPostBack="false" ></asp:TextBox>
                    <asp:Label ID="toolTip" runat="server" Text="?" Font-Size ="25px" ForeColor="blue" ToolTip="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic caracter and must not contain special character"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="tableproperty">
            <tr style="text-align:center">
                <td>
                    <asp:Button ID="savePersonalInfo" runat="server" Text="Save Personal Information" Height="46px" Width="465px" Font-Bold ="true" Font-Size ="30px" BackColor="#006600" ForeColor="White" OnClick="savePersonalInfo_Click" CausesValidation="false"/>
                </td>
                <td>
                    <asp:Button ID="enterLoanInfo" runat="server" Text="Enter Loan Information" Height="46px" Width="465px" Font-Bold ="true" Font-Size ="30px" BackColor="#006600" ForeColor="White" OnClick="enterLoanInfo_Click"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
