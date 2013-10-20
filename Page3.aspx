<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="3.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
Label1.Text = Request.QueryString["name"];
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    <br />
    <asp:Button ID="Button1" runat="server" 
        style="height: 26px" Text="Button" />
</asp:Content>
