<%@ Page Language="C#"  %>

<!DOCTYPE html>

<script runat="server">
    protected void Calendar_DayRender(object sender, DayRenderEventArgs e)
    {
        CalendarDay d = e.Day;
        TableCell c = e.Cell;

        if(d.IsOtherMonth)
        {
            c.Controls.Clear();
        }
        else
        {
            string message = GetSchedule(d.Date.Month, d.Date.Day);
            c.Controls.Add(new LiteralControl("<br>" + message));
        }
    }

    string GetSchedule(int month, int day)
    {
        string schedule = "";
        if(month==9 && day==7)
        {
            schedule = "Labor Day";
        }
        else if(month==10 && day==31)
        {
            schedule = "Halloween";
        }
        else if(month==11 && day==26)
        {
            schedule = "<a href='http://www.microcenter.com/%27%3EBlack'>Black Friday</a>";
        }
        else if(month==12 && day==25)
        {
            schedule = "Christmas";
        }
        return schedule;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml%22%3E">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>DayRender Example using Calendar</h3>

            <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar_DayRender"
                ShowGridLines="true" Width="500px" TitleStyle-BackColor="Gainsboro"
                TitleStyle-Font-Size="12px" TitleStyle-Font-Bold="true" 
                VerticalAlign="Top" DayStyle-Height="50px" DayStyle-Width="15%"
                SelectedDayStyle-BackColor="Red" VisibleDate="9/1/2020">

            </asp:Calendar>
        </div>
    </form>
</body>
</html>