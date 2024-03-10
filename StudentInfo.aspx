<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="StudentInformationCRUDOperation.StudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 266px; height: 24px;"></td>
            <td style="height: 24px"></td>
            <td style="width: 34px; height: 24px;"></td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" Text="Student Information"></asp:Label>
            </td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px; height: 30px">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="height: 30px">
                <asp:TextBox ID="txtName" runat="server" Width="248px"></asp:TextBox>
            </td>
            <td rowspan="9" style="width: 34px">
                <asp:GridView ID="dgViewStudents" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" DataFormatString="{0:MM/dd/yyyy}"/>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="width: 266px">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="248px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlGender" runat="server" Width="254px">
                    <asp:ListItem>Choose Any</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCon %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px; height: 30px">
                <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth"></asp:Label>
            </td>
            <td style="height: 30px">
                <asp:TextBox ID="txtDOB" runat="server" Width="245px" TextMode="Date"></asp:TextBox>
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="width: 266px; height: 25px"></td>
            <td style="height: 25px">
                <asp:CheckBox ID="chkBoxAgree" runat="server" Text="Yes, I Agree!" />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
            <td style="height: 25px"></td>
        </tr>
        <tr>
            <td style="width: 266px">
                <asp:Label ID="lblSID" runat="server" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px; height: 36px;"></td>
            <td style="height: 36px">
                <asp:Button ID="btnAdd" runat="server" Text="Add" Width="108px" OnClick="btnAdd_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="97px" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="112px" OnClick="btnDelete_Click" />
            </td>
            <td style="height: 36px"></td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel Operation" Width="231px" OnClick="btnCancel_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 266px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 34px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br /> <br />
</asp:Content>
