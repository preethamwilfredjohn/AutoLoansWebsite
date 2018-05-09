<%@ Page Title="AAL American Auto Loans" Language="C#" MasterPageFile="~/NestedMaster.master" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="WAD.Question" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
    <div class="questionBgImage">  
        <br />
        <p style="text-align:center; font-size:80px; color:whitesmoke">FAQ Topics</p> 
        <br />
    </div>
    <div style="height:1004px">
        <embed src="PDF/questionsDoc.pdf" style="align-content:stretch" width="100%" height="100%" />
    </div>
</asp:Content>