<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 164px;
            background-color: #99CCFF;
        }
        .style2
        {
            background-color: #99CCFF;
        }
        .style3
        {
            width: 253px;
            background-color: #99CCFF;
        }
        .auto-style1 {
            width: 253px;
            background-color: #99CCFF;
            text-align: left;
        }
        .auto-style3 {
            width: 56px;
            background-color: #99CCFF;
            text-align: left;
            height: 23px;
        }
        .auto-style4 {
            width: 253px;
            background-color: #99CCFF;
            text-align: left;
            height: 23px;
        }
        .auto-style7 {
            width: 56px;
            background-color: #99CCFF;
            text-align: left;
        }
        .auto-style8 {
            width: 31%;
            margin-right: 0px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="auto-style9">
            <p1><span class="auto-style10">Baza danych studentów - Adam Zuk - 90559</span></p1>
        </div>
    <div>
    
        <br />
    
        <asp:GridView ID="GridView1" runat="server" Height="284px" Width="600px" HorizontalAlign="Center" style="text-align: right" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    
        <br />
    
    </div>
    <table align="center" class="auto-style8">
        <tr>
            <td class="auto-style7">
                ID_student</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtIDstudent" runat="server" MaxLength="4" Width="53px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Tylko cyfry!" ValidationExpression="^[0-9]*$" 
                    ControlToValidate="txtIDstudent"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                </td>
            <td class="auto-style4">
                </td>
        </tr>
        <tr>
            <td class="auto-style7">
                name</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtname" runat="server" MaxLength="15" Width="208px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="tylko litery ? !" 
                    ValidationExpression="^[A-Za-ząęćśżźłńŻŹĆŃŚŁóÓ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                nazwisko</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtnazwisko" runat="server" MaxLength="30" Width="207px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtnazwisko" ErrorMessage="tylko litery  nazwisko? !" 
                    ValidationExpression="^[A-Za-ząęćśżźłńŻŹĆŃŚŁóÓ-]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                studentNo</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtstudentNo" runat="server" MaxLength="6" Width="204px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtstudentNo" ErrorMessage="tylko cyfry studno!" 
                    ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="insertBtn" runat="server" onclick="insertBtn_Click" 
                    Text="insert" Width="150px" />
            </td>
            <td class="auto-style1">
                Wprowadź nowy wpis</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="updateBtn" runat="server" Text="update" Width="150px" 
                    onclick="updateBtn_Click" />
            </td>
            <td class="auto-style1">
                Uaktualnij wpis</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="deleteBtn" runat="server" Text="delete" Width="150px" 
                    onclick="deleteBtn_Click" />
            </td>
            <td class="auto-style1">
                Usuń wpis</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="szukajBtn" runat="server" Text="szukaj" Width="150px" 
                    onclick="szukajBtn_Click" />
            </td>
            <td class="auto-style1">
                Szukaj wpisu</td>
        </tr>
    </table>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
    </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
