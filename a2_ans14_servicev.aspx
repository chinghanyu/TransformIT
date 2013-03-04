<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Validated Search</title>
</head>

<body>

<form id="form1" runat="server">
	<asp:GridView id="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vender_service" DataSourceID="AccessDataSource1">
		<Columns>
			<asp:BoundField DataField="vender_service" HeaderText="vender_service" ReadOnly="True" SortExpression="vender_service">
			</asp:BoundField>
			<asp:BoundField DataField="activity" HeaderText="activity" SortExpression="activity">
			</asp:BoundField>
			<asp:BoundField DataField="reference_customer" HeaderText="reference_customer" SortExpression="reference_customer">
			</asp:BoundField>
		</Columns>
	</asp:GridView>
	<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="database/servicedb.accdb" SelectCommand="SELECT * FROM customer WHERE activity=? AND reference_customer=?">
		<SelectParameters>
			<asp:FormParameter DefaultValue="management" FormField="activity" Name="?" />
			<asp:FormParameter DefaultValue="Deutsch Bank" FormField="reference_customer" Name="?" />
		</SelectParameters>
	</asp:AccessDataSource>
	<table style="width: auto">
		<tr>
			<td>&nbsp;</td>
			<td>
			&nbsp;</td>
		</tr>
		<tr>
			<td>Vender activity:</td>
			<td>
			<asp:TextBox id="activity" runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="activity" ErrorMessage="Vender activity is required."></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td>Vender's customer:</td>
			<td>
			<asp:TextBox id="reference_customer" runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="reference_customer" ErrorMessage="Vender's customer is required."></asp:RequiredFieldValidator>
			</td>
		</tr>
	</table>
	<p><asp:Button id="Button1" runat="server" Text="Submit" PostBackUrl="a2_ans14_servicev.aspx" /></p>
</form>

</body>

</html>
