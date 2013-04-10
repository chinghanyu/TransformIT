<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>An AJAX Based Page</title>
</head>

<body>

<form id="form1" runat="server">

	<asp:SqlDataSource id="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=http://orman.johnson.cornell.edu" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM flight">
	</asp:SqlDataSource>

<script runat="server" language="C#">
	protected void Page_Load(object sender, EventArgs e) {
		timeLabel.Text = DateTime.Now.ToString();
	} 
</script>

<p>Hello there!</p>
<p>The time is now: 

<asp:Label runat="server" id="timeLabel" /></p>

	<asp:ScriptManager id="ScriptManager1" runat="server">
	</asp:ScriptManager>
	<asp:UpdatePanel id="UpdatePanel1" runat="server">
		<ContentTemplate>
			<asp:AdRotator id="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
			<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="a4_ad.xml">
			</asp:XmlDataSource>
			<asp:Timer id="Timer1" runat="server" Interval="1000" />
		</ContentTemplate>
	</asp:UpdatePanel>

</form>

</body>

</html>
