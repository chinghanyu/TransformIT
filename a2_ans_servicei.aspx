<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta content="zh-tw" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Interactive Data Page</title>
</head>

<body>

<form id="form1" runat="server">
	<asp:GridView id="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vender_service" DataSourceID="AccessDataSource1">
		<Columns>
			<asp:BoundField DataField="vender_service" HeaderText="vender_service" ReadOnly="True" SortExpression="vender_service">
			</asp:BoundField>
			<asp:BoundField DataField="price" HeaderText="price" SortExpression="price">
			</asp:BoundField>
			<asp:BoundField DataField="delivery_center" HeaderText="delivery_center" SortExpression="delivery_center">
			</asp:BoundField>
			<asp:BoundField DataField="service_window_hour" HeaderText="service_window_hour" SortExpression="service_window_hour">
			</asp:BoundField>
			<asp:BoundField DataField="service_window_week" HeaderText="service_window_week" SortExpression="service_window_week">
			</asp:BoundField>
		</Columns>
	</asp:GridView>
	<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="database/servicedb.accdb" SelectCommand="SELECT * FROM service WHERE delivery_center=? AND price&lt;=?">
		<SelectParameters>
			<asp:FormParameter DefaultValue="" FormField="delivery_center" Name="?" />
			<asp:FormParameter DefaultValue="0" FormField="price" Name="?" />
		</SelectParameters>
	</asp:AccessDataSource>
</form>
<form action="" method="post">
	<table style="width: auto">
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Delivery Center:</td>
			<td><input name="delivery_center" type="text" value="China" /></td>
		</tr>
		<tr>
			<td>Price no larger than:</td>
			<td><input name="price" type="text" value="0" /></td>
		</tr>
	</table>
	<br />
	<input name="Submit1" type="submit" value="submit" />
	<input name="Reset1" type="reset" value="reset" /></form>

</body>

</html>
