<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>

	<script type="text/javascript" language="javascript">
		function Navigate() {
			var pageUrl = document.location.href.split('#');
			var anchor = '#' + ClientTreeListTest.GetFocusedNodeKey();
			document.location.href = pageUrl[0] + anchor;
		}
	</script>

	<form id="mainForm" runat="server">
	<div style="position: fixed; top: 0px; right: 0px">
		<dx:ASPxButton ID="ASPxButtonMoveToFocusedNode" runat="server" 
			Text="Scroll to focused node" AutoPostBack="False"
			Width="200px">
			<ClientSideEvents Click="function(s, e) {
				Navigate();
			}" />
		</dx:ASPxButton>
	</div>
	<div>
		<dx:ASPxTreeList ID="ASPxTreeListTest" runat="server" AutoGenerateColumns="False" ClientInstanceName="ClientTreeListTest"
			DataSourceID="AccessDataSourceTest" KeyFieldName="OrderID" 
			OnHtmlRowPrepared="ASPxTreeListTest_HtmlRowPrepared">
			<SettingsBehavior AllowFocusedNode="True" />
			<Columns>
				<dx:TreeListTextColumn FieldName="OrderID" VisibleIndex="1">
				</dx:TreeListTextColumn>
				<dx:TreeListTextColumn FieldName="CustomerID" VisibleIndex="2">
				</dx:TreeListTextColumn>
				<dx:TreeListTextColumn FieldName="EmployeeID" VisibleIndex="3">
				</dx:TreeListTextColumn>
				<dx:TreeListDateTimeColumn FieldName="OrderDate" VisibleIndex="4">
				</dx:TreeListDateTimeColumn>
				<dx:TreeListDateTimeColumn FieldName="RequiredDate" VisibleIndex="5">
				</dx:TreeListDateTimeColumn>
			</Columns>
		</dx:ASPxTreeList>
	</div>
	<asp:AccessDataSource ID="AccessDataSourceTest" runat="server" DataFile="~/App_Data/nwind.mdb"
		SelectCommand="SELECT [OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate] FROM [Orders]"
		DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate]) VALUES (?, ?, ?, ?, ?)"
		UpdateCommand="UPDATE [Orders] SET [CustomerID] = ?, [EmployeeID] = ?, [OrderDate] = ?, [RequiredDate] = ? WHERE [OrderID] = ?">
		<DeleteParameters>
			<asp:Parameter Name="OrderID" Type="Int32" />
		</DeleteParameters>
		<UpdateParameters>
			<asp:Parameter Name="CustomerID" Type="String" />
			<asp:Parameter Name="EmployeeID" Type="Int32" />
			<asp:Parameter Name="OrderDate" Type="DateTime" />
			<asp:Parameter Name="RequiredDate" Type="DateTime" />
			<asp:Parameter Name="OrderID" Type="Int32" />
		</UpdateParameters>
		<InsertParameters>
			<asp:Parameter Name="OrderID" Type="Int32" />
			<asp:Parameter Name="CustomerID" Type="String" />
			<asp:Parameter Name="EmployeeID" Type="Int32" />
			<asp:Parameter Name="OrderDate" Type="DateTime" />
			<asp:Parameter Name="RequiredDate" Type="DateTime" />
		</InsertParameters>
	</asp:AccessDataSource>
	</form>
</body>
</html>