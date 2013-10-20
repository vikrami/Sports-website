<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="2.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type ="text/javascript" language = "javascript" >
function _checkValidation() 
{
var name = document.getElementById("<%=username.ClientID %>");
            if (name.value==""){
                alert("Please enter name");
                name.focus();
                return false;}
            var radio=document.getElementById("<%=gender.ClientID %>").getElementsByTagName("input");
            var selected = 0;
            for (var x = 0; x < radio.length; x++) {
                if (radio[x].checked) {
                    selected = 1;
                }
                    }
            if (selected==0){
                alert("Please select your gender");
                return false;
            }
            var dropdown=document.getElementById("<%=occupation.ClientID %>");
            var dropdown1=dropdown.options[dropdown.selectedIndex].value;
            if (dropdown1=="0") {
                alert("Please select your marital status");
                dropdown.focus();
                return false;
            }
            var language = document.getElementById("<%=languageknown.ClientID %>").getElementsByTagName("input");
            var select= 0;
            for (var t = 0; t < language.length; t++) {
                if (language[t].checked) {
                    select = 1;
                }
            }
            if (select == 0) {
                alert("Please select atleast one language");
                return false;
            }
            var o = document.getElementById("<%=ListBox1.ClientID %>");
            var x = o.selectedIndex;
            if(x==-1)
            {
                alert("enter atleast one occupation");
                return false;
            }
}
</script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">


    <p>
    Username
    <asp:TextBox ID="username" runat="server"></asp:TextBox>
</p>
    <p>
        Password
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="ENTER PASSWORD" 
            ForeColor="Yellow" SetFocusOnError="True"></asp:RequiredFieldValidator>
</p>
    <p>
        Confirm Password
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="CONFIRM PASSWORD" 
            ForeColor="Yellow" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox1" ControlToValidate="TextBox2" Display="Dynamic" 
            ErrorMessage="PASSWORD DOESN'T MATCH" ForeColor="Yellow" 
            SetFocusOnError="True"></asp:CompareValidator>
</p>
<p>
    Gender&nbsp;
    <asp:RadioButtonList ID="gender" runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
</p>
<p>
    Marital Status
    <asp:DropDownList ID="occupation" runat="server">
        <asp:ListItem Value="0">select</asp:ListItem>
        <asp:ListItem Value="1">single</asp:ListItem>
        <asp:ListItem Value="2">married</asp:ListItem>
    </asp:DropDownList>
</p>
    <p>
        Languages Known</p>
    <p>
        <asp:CheckBoxList ID="languageknown" runat="server">
            <asp:ListItem>english</asp:ListItem>
            <asp:ListItem>hindi</asp:ListItem>
            <asp:ListItem>marathi</asp:ListItem>
        </asp:CheckBoxList>
</p>
    Occupation<br />
    <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" 
        style="margin-right: 12px">
        <asp:ListItem>hr</asp:ListItem>
        <asp:ListItem>teacher</asp:ListItem>
        <asp:ListItem>student</asp:ListItem>
        <asp:ListItem>manager</asp:ListItem>
        <asp:ListItem>ceo</asp:ListItem>
    </asp:ListBox>
 <asp:Button ID="Button1" runat="server" Text="SUBMIT" 
            OnClientClick=" return _checkValidation();" onclick="Button1_Click" />
</asp:Content>
