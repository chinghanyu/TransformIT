﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Dynamic Data Page</title>
</head>

<body>

<form id="form1" runat="server">
	<asp:GridView id="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vender_service" DataSourceID="AccessDataSource1">
		<Columns>
			<asp:BoundField DataField="vender_service" HeaderText="vender_service" ReadOnly="True" SortExpression="vender_service">
			</asp:BoundField>
		</Columns>
	</asp:GridView>
	<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="database/servicedb.accdb" SelectCommand="SELECT vender_service FROM service WHERE delivery_center='North Carolina';">
	</asp:AccessDataSource>
</form>

</body>

</html>
