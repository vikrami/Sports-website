<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="1.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p ><br/>WELCOME TO THE RED DEVILS FAN PAGE !!!</p>
        CLICK TO SIGN IN :
        <asp:Button ID="Button2" runat="server" Text="SIGN In" />
    <p>CLICK TO SIGN UP :
        <asp:Button ID="Button1" runat="server" Text="Sign Up" 
            onclick="Button1_Click" /></p>
<p>GLORY GLORY MAN UNITED..</p>
</asp:Content>
