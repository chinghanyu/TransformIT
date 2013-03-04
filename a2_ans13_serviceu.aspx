<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Database Update</title>
</head>

<body>

<form id="form1" runat="server">
	<asp:GridView id="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vender_service" DataSourceID="AccessDataSource1">
		<Columns>
			<asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
			</asp:CommandField>
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
	<p>&nbsp;</p>
	<asp:DetailsView id="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="vender_service" DataSourceID="AccessDataSource1" Height="50px" Width="125px">
		<Fields>
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
			<asp:CommandField ShowInsertButton="True">
			</asp:CommandField>
		</Fields>
	</asp:DetailsView>
	<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="database/servicedb.accdb" DeleteCommand="DELETE FROM service WHERE vender_service=@vender_service" InsertCommand="INSERT INTO service VALUES (?,?,?,?,?)" SelectCommand="SELECT * FROM service" UpdateCommand="UPDATE service SET price=?, delivery_center=?, service_window_hour=?, servce_window_week=? WHERE vender_service=@vender_service">
	</asp:AccessDataSource>
</form>

</body>

</html>
