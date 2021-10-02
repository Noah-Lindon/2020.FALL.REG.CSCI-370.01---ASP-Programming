<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment 5 hi kwon.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Example 1 using SqlDataSource and GridView</h3>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="true"
                AllowSorting="true" AllowGenerateColumns="false" DataKeyNames="emp_id"
                DataSourceID="SqlDataSource1" Caption="Employee List"
                CaptionAssign="Left">
                <Columns>
                    <asp:BoundField DataField="emp_id" HeaderText="emp_id"
                        ReadOnly="true" SortExpression="emp_id" />
                    <asp:BoundField DataField="fname" HeaderText="fname"
                        SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="lname"
                        SortExpression="lname" />
                    <asp:BoundField DataField="job_lvl" HeaderText="job_lvl"
                        SortExpression="job_lvl" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ConnectionStrings: pubsConenctionString %>"
                SelectCommand ="select [emp_id], [fname], [lname], [job_lvl]
                from [employee]">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>