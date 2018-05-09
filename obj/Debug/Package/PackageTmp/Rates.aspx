<%@ Page Title="AAL American Auto Loans" Language="C#" MasterPageFile="~/NestedMaster.master" AutoEventWireup="true" CodeBehind="Rates.aspx.cs" Inherits="WAD.Rates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
    <p style =" text-align:center; color:aqua; font-size:60px">Annual Percentage Rates (APR)</p>
    <p style =" text-align:center; color:chartreuse; line-height:0.8px; font-size:50px">Loan Amounts, Rates and Terms</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <style>
        table,th,td {
            border : 1px solid black;
            border-collapse: collapse;            
            text-align:center;
        }
        th,td {
            padding: 5px;
        }
        tr:nth-child(even){
            background-color:#FFE658;
        }

        .auto-style1 {
            width: 244px;
            height: 45px;
            font-size: 20px;
            text-align:center;
            transition-duration:0.4s;
        }
        .auto-style1:hover{
            background-color:#FFE658;
            color:white;
        }

    </style>    
    <button type="button" onclick="loadDoc()" class="auto-style1">View Rates</button>
    <br><br>
    <table id="demo" style="width:100%; font-size:30px">
        <tr><th>Loan Amount</th><th>24 - 36 Month</th><th>37 - 48 Month</th><th>49 - 60 Month</th><th>61 - 72 Month</th><th>73 - 84 Month</th></tr>
    </table>
    
    <script>
        function loadDoc() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    myFunction(this);
                }
            };
            xhttp.open("GET", "rates.xml", true);
            xhttp.send();
        }
        function myFunction(xml) {
            var i;
            var xmlDoc = xml.responseXML;
            var table = "<tr><th>Loan Amount</th><th>24 - 36 Month</th><th>37 - 48 Month</th><th>49 - 60 Month</th><th>61 - 72 Month</th><th>73 - 84 Month</th></tr>";
            var x = xmlDoc.getElementsByTagName("RATESINFO");
            for (i = 0; i <x.length; i++) { 
                table += "<tr><td>" +
                x[i].getElementsByTagName("LOANAMOUNT")[0].childNodes[0].nodeValue + "</td><td>" +
                x[i].getElementsByTagName("months01-2436")[0].childNodes[0].nodeValue + "</td><td>"+
                x[i].getElementsByTagName("months02-3748")[0].childNodes[0].nodeValue + "</td><td>" +
                x[i].getElementsByTagName("months03-4960")[0].childNodes[0].nodeValue + "</td><td>" +
                x[i].getElementsByTagName("months04-6172")[0].childNodes[0].nodeValue + "</td><td>" +
                x[i].getElementsByTagName("months05-7384")[0].childNodes[0].nodeValue + "</td></tr>";
            }
          document.getElementById("demo").innerHTML = table;
        }
</script>
    <div style="background-color:khaki">
        <p style="font-size:40px">Loan Terms:</p>
        <ul style="font-size:30px">
            <li>   Rates quoted with AutoPay option. Invoicing option is 0.50 points higher. Invoices are delivered by email.</li>
            <li>   Fixed rate, simple interest fully amortizing installment loans, no fees or prepayment penalties.</li>
            <li>   Loan proceeds may not be used to refinance any existing loan with LightStream.</li>
            <li>   Florida loans subject to Documentary Stamp Tax. The tax amount is not included in the quoted APR.</li>
        </ul>
    </div>
</asp:Content>
