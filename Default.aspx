<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WAD.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <table style = "width : 100%; text-decoration:none; font-size:25px" >
        <tr>
            <th><a href="javascript:alert('Page Under Construction');">Home</a></th>       
            <th><a href="Rates.aspx">Rates</a></th>        
            <th><a href="Question.aspx">Question</a></th>       
            <th><a href="Security.aspx">Security</a></th>
            <th>
                <asp:Button ID="ApplyNow" runat="server" Text="APPLY NOW" BackColor="#CC0000" ForeColor="#FFFFCC" Font-Bold ="true" OnClick="ApplyNow_Click" Height="32px" Width="128px"/></th>
            <th>
                <asp:Button ID="Button2" runat="server" Text="SIGIN IN" BackColor="#006600" ForeColor="White" Font-Bold ="true" OnClick="Button2_Click" Height="32px" Width="128px"/></th>         
        </tr>
    </table> 
   <script>
       function alertBox() {
           alert("Yet to configure functionality.");
       }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="bgImage">
        <br />
        <br />
        <p class="align">&nbsp;</p>
        <p class="align">&nbsp;</p>
        <p class="align">&nbsp;</p>
        <p class="align">&nbsp;</p>
        <p class="align">&nbsp;</p>
        <p class="align">&nbsp;</p>
        <p style="text-align:center; font-size:60px">USED AUTO LOANS</p>
        <p style="text-align:center; font-size:50px">from 2.49% APR Auto Play</p>
        <p style="text-align:center; font-size:50px">when purchased froma dealer</p>
        <p class="align">
            <asp:Button ID="Button1" runat="server" Text="APPLY NOW" BackColor="#CC0000" ForeColor="#FFFFCC" Height="53px" Width="400px" Font-Bold ="true" OnClick="Button1_Click" Font-Size="15"/>
            <asp:Button ID="usedCar" runat="server" Text="USED CAR PRIVATE PARTY" BackColor="#006600" ForeColor="White" Height="53px" Width="400px" Font-Bold ="true" Font-Size="15" OnClick="usedCar_Click" />    
        <script>
            function alertBox() {
                alert("Yet to configure functionality.");
            }
        </script>
        </p>
          <p class="align">
          &nbsp;</p>
        <p class="align">
          &nbsp;</p>
        <p class="align">
          &nbsp;</p>
        <p class="align">
          &nbsp;</p>
        <p class="align">
          &nbsp;</p>
        <p class="align">
          &nbsp;</p>
        <table style="width:100%">
        </table>
   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">    
    <div>
        <table class="watermark" style = "width : 100%; font-size:25px" >
            <tr>
                <th style="height: 36px"><a onclick="toggle1();" href="#">Why AAL</a></th>       
                <th style="height: 36px"><a onclick="toggle2();" href="#">100% Loan Experience Guarantee</a></th>        
                <th style="height: 36px"><a onclick="toggle3();" href="#">We will beat any qualifying rate</a></th>                               
            </tr>
        </table>
        <table id="row1" border="1" style="width:100%; font-size:25px; display:none;" >
                <tr>
                    <td style="background-color:white">When you have good credit, you’ve earned a lower interest rate, and a refreshingly simple loan process.
                        We’ve built our business around that belief, and it’s made us the premier national online consumer lender. 
                        Got good credit? Get a low-interest, no-fee loan from $5,000 to $100,000, for practically any purpose, as soon as today.
                    </td>
                    <td>
                        At American Auto Loans we’ve put you, the customer, at the center of the loan process. 
                        You decide your loan amount, terms and funding date through an online process that you control. 
                        And we guarantee that it will be the best loan process you’ve ever experienced. 
                        If after receiving your loan from us you are not completely satisfied, we’ll send you $100.
                    </td>
                    <td>
                        Many lenders claim that they have low interest rates. At America Auto Loans we actually do. 
                        We are so confident in the competitiveness of our interest rates that we will beat a qualifying interest rate (APR)2 from any other lender. 
                        With our low rates and our commitment to exceptional service, there's no reason to go anywhere else when you need a loan.
                    </td>
                </tr>
            </table>
            <table id="row2" border="1" style="width:100%; font-size:25px; display:none;">
                <tr>
                    <td>When you have good credit, you’ve earned a lower interest rate, and a refreshingly simple loan process.
                        We’ve built our business around that belief, and it’s made us the premier national online consumer lender. 
                        Got good credit? Get a low-interest, no-fee loan from $5,000 to $100,000, for practically any purpose, as soon as today.
                    </td>
                    <td style="background-color:white">
                        At American Auto Loans we’ve put you, the customer, at the center of the loan process. 
                        You decide your loan amount, terms and funding date through an online process that you control. 
                        And we guarantee that it will be the best loan process you’ve ever experienced. 
                        If after receiving your loan from us you are not completely satisfied, we’ll send you $100.
                    </td>
                    <td>
                        Many lenders claim that they have low interest rates. At America Auto Loans we actually do. 
                        We are so confident in the competitiveness of our interest rates that we will beat a qualifying interest rate (APR)2 from any other lender. 
                        With our low rates and our commitment to exceptional service, there's no reason to go anywhere else when you need a loan.
                    </td>
                </tr>
            </table>
            <table id="row3" border="1" style="width:100%; font-size:25px; display:none;">
                <tr>
                    <td>When you have good credit, you’ve earned a lower interest rate, and a refreshingly simple loan process.
                        We’ve built our business around that belief, and it’s made us the premier national online consumer lender. 
                        Got good credit? Get a low-interest, no-fee loan from $5,000 to $100,000, for practically any purpose, as soon as today.
                    </td>
                    <td>
                        At American Auto Loans we’ve put you, the customer, at the center of the loan process. 
                        You decide your loan amount, terms and funding date through an online process that you control. 
                        And we guarantee that it will be the best loan process you’ve ever experienced. 
                        If after receiving your loan from us you are not completely satisfied, we’ll send you $100.
                    </td>
                    <td style="background-color:white">
                        Many lenders claim that they have low interest rates. At America Auto Loans we actually do. 
                        We are so confident in the competitiveness of our interest rates that we will beat a qualifying interest rate (APR)2 from any other lender. 
                        With our low rates and our commitment to exceptional service, there's no reason to go anywhere else when you need a loan.
                    </td>
                </tr>
            </table>
    <script>
            function toggle1()
            {
                var toggleTable = document.getElementById("row1");
                var tooggle2 = document.getElementById("row2");
                var tooggle3 = document.getElementById("row3");
                toggleTable.style.display = (toggleTable.style.display == "table") ? "none" : "table";
                tooggle2.style.display = "none";
                tooggle3.style.display = "none";
            }
            function toggle2() {
                var toggleTable = document.getElementById("row2");
                var tooggle1 = document.getElementById("row1");
                var tooggle3 = document.getElementById("row3");
                toggleTable.style.display = (toggleTable.style.display == "table") ? "none" : "table";
                tooggle1.style.display = "none";
                tooggle3.style.display = "none";
            }
            function toggle3() {
                var toggleTable = document.getElementById("row3");
                var tooggle1 = document.getElementById("row1");
                var tooggle2 = document.getElementById("row2");
                toggleTable.style.display = (toggleTable.style.display == "table") ? "none" : "table";
                tooggle2.style.display = "none";
                tooggle1.style.display = "none";
            }
    </script>
        </div>
    <div>
        <table style="width: 100%; height: 10%">
       <tr>
           <th>
               <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/ads.xml" />
           </th>
       </tr>
   </table>
   </div>
</asp:Content>