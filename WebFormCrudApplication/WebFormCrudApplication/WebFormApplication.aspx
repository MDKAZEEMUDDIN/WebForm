﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormApplication.aspx.cs" Inherits="WebFormCrudApplication.WebFormApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <body style="background-color:greenyellow;">

    <form id="form1" runat="server">
       <div align="left">
             <div align="left">
                 <h1 style="background-color:DodgerBlue;"> Employees Details</h1>
                 
         <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Mobile No."></asp:Label>
        <asp:TextBox ID="txtmno" runat="server"></asp:TextBox>
             </div>
        <br /><br />
        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        <br /><br />
        <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="btnadd_Click" />
        <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
        <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="mno" HeaderText="Mobile No." />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkselect" runat="server" CommandArgument='<%# Eval("empid") %>' OnClick="lnkselect_Click" >Click Here</asp:LinkButton>
                 </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </div>
     </form>
   </body>
</html>
