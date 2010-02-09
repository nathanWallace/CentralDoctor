<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="consultantSearch.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script type="text/javascript">
       $(document).ready(function() {
           //Keep consultant search open and populate
           $('.dropDown').attr({ 'class': 'ovNone' }); $('.buttons').attr({ 'title': 'Open' }); // close all first
           $('#consultant').attr('title', 'Close'); $('#consultantMenu').animate({ height: '159px' }, // height has to be set unfortunatly otherwise no animation
           900, 'easeOutBack').attr('class', 'dropDown');
             
       });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="results">
<h2>Consultant results</h2>

<div class="resultsHeader">
<div class="conCol1 tablecell"><h3>Consultant name:</h3></div>
<div class="conCol tablecell"><h3>Specialty:</h3></div>
<div class="conCol tablecell"><h3>Main HCA hospital:</h3></div>
<div class="conCol2 tablecell"><h3>NHS post:</h3></div>
</div>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
<ul>
   <asp:Repeater ID="Repeater1" runat="server"> 
    <ItemTemplate>
    <li>
    <div class="conCol1 tablecell"><h1><asp:Label ID="name" runat="server" Text='<%# eval("Title") %>'></asp:Label> <asp:Label ID="surname" CssClass="highLight1" runat="server" Text='<%# eval("CONTACT") %>'></asp:Label></h1></div>
    <div class="conCol tablecell"><p><asp:Label ID="specialty" runat="server" Text='<%# eval("Speciality1") %>'></asp:Label></p></div>
    <div class="conCol tablecell"><p><asp:Label ID="hospital" runat="server" CssClass='<%# whatColour(eval("HCAHospital1"),eval("HCAHospital2"),eval("HCAHospital3")) %>' Text='<%# whatName(eval("HCAHospital1"),eval("HCAHospital2"),eval("HCAHospital3")) %>'></asp:Label></p></div>
    <div class="conCol2 tablecell"><p><asp:Label ID="nhsbase" runat="server" Text='<%# eval("NHSBaseHospital1") %>'></asp:Label></p></div>
    </li><br />
    </ItemTemplate>
    </asp:Repeater>
</ul>
</div>

</asp:Content>

