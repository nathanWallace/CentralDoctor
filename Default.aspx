<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="Dash">

<div id="leftCol">
<div id="topLeft" class="tile">
<div class="strip topStrip1"><h1>Welcome</h1></div>
<div class="strip middle1"><p>Lorem Ipsum</p></div>
<div class="strip bottomStrip1"></div>
</div>

<div id="middleLeft" class="tile">
<div class="strip topStrip1"><h1>HCA Connect</h1></div>
<div class="strip middle1"><p>Lorem Ipsum</p></div>
<div class="strip bottomStrip1"></div>
</div>

<div id="bottomLeft" class="tile">
<div class="strip topStrip2"><h1>Forum</h1></div>
<div class="strip middle2"><p>Lorem Ipsum</p></div>
<div class="strip bottomStrip2"></div>
</div>
</div>

<!-- right -->
<div id="rightCol">
<img class="Right" id="topRight" src="img/heroTile.png" alt="master" /> 

<div id="bottomRight" class="Right">
<div class="strip topStrip3"><h1>Endoscopy</h1></div>
<div class="strip middle3"><p>Lorem Ipsum</p></div>
<div class="strip bottomStrip3"></div>
</div>
</div>

</div>
</asp:Content>

