<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<script type="text/javascript" src="Pages.js"></script>
	<style>
        
	</style>
    <div>
        <h1>Geographic</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
    </div>

	<table id="mainTable">
        <tr>
            <td>Country:&nbsp;</td>
            <td>
				<asp:DropDownList Id="ddlCountry" runat="server" OnSelectedIndexChanged="CountryChanged" Width="400px">
					<asp:ListItem Text="Choose country..." Value="0" />
					<asp:ListItem Text="Canada" Value="1" />
					<asp:ListItem Text="United States" Value="2" />
				</asp:DropDownList>
            </td>
        </tr>
		<tr><td><label></label></td><td></td></tr>
        <tr>
            <td>State:&nbsp;</td>
            <td>
                <asp:DropDownList Id="ddlState" runat="server" OnSelectedIndexChanged="StateChanged" Width="400px">
					<asp:ListItem Text="Choose state..." Value="0" />
				</asp:DropDownList>
            </td>
        </tr>
		<tr><td><label></label></td><td></td></tr>
        <tr>
            <td>City:&nbsp;</td>
            <td>
                <asp:DropDownList Id="ddlCities" runat="server" Width="400px">
					<asp:ListItem Text="Choose city..." Value="0" />
                </asp:DropDownList>
            </td>
        </tr>
		<tr><td><label></label></td><td></td></tr>
        <tr>
            <td></td>
            <td>
                <asp:Button
					id="btnDisplay"
					Text="Display"
					UseSubmitBehavior="false"
					Runat="server" OnClick="btnDisplayClick" OnClientClick="if(!DisplayButtonClick()) {return false;}"/>
            </td>
        </tr>
    </table>

	<div class="mapouter">
		<div class="gmap_canvas">
			<%--<iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=CANADA%20ONTARIO%20VAUGHAN&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">--%>
			<iframe width="600" height="500" id="gmap_canvas" src="javascript:;" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
			</iframe>
			<a href="https://www.embedgooglemap.net">embed google map</a>
		</div>
		<style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}
		</style>
	</div>

    <hr />
    <asp:Label
        id="lblSelection"
        Runat="server" />

</asp:Content>
