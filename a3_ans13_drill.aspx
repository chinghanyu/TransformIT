<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Drill</title>
</head>

<body>

<form id="form1" runat="server">
	<asp:DropDownList id="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="AccessDataSource1" DataTextField="vender_service" DataValueField="vender_service">
	</asp:DropDownList>
	<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="database/servicedb.accdb" SelectCommand="SELECT customer.vender_service FROM customer">
	</asp:AccessDataSource>
	<asp:DropDownList id="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="AccessDataSource2" DataTextField="reference_customer" DataValueField="reference_customer">
	</asp:DropDownList>
	<asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="database/servicedb.accdb" SelectCommand="SELECT customer.reference_customer FROM customer WHERE customer.vender_service=?">
		<SelectParameters>
			<asp:ControlParameter ControlID="DropDownList1" DefaultValue="Bladecenter IBM" Name="?" PropertyName="SelectedValue" />
		</SelectParameters>
	</asp:AccessDataSource>
	<p><asp:GridView id="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vender_service" DataSourceID="AccessDataSource3">
		<Columns>
			<asp:BoundField DataField="vender_service" HeaderText="vender_service" ReadOnly="True" SortExpression="vender_service">
			</asp:BoundField>
			<asp:BoundField DataField="activity" HeaderText="activity" SortExpression="activity">
			</asp:BoundField>
			<asp:BoundField DataField="reference_customer" HeaderText="reference_customer" SortExpression="reference_customer">
			</asp:BoundField>
		</Columns>
	</asp:GridView></p>
	<asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="database/servicedb.accdb" SelectCommand="SELECT * FROM customer WHERE customer.vender_service=? AND customer.reference_customer=?">
		<SelectParameters>
			<asp:ControlParameter ControlID="DropDownList1" DefaultValue="Bladecenter IBM" Name="?" PropertyName="SelectedValue" />
			<asp:ControlParameter ControlID="DropDownList2" DefaultValue="ToysRUS" Name="?" PropertyName="SelectedValue" />
		</SelectParameters>
	</asp:AccessDataSource>
</form>

</body>

</html>
