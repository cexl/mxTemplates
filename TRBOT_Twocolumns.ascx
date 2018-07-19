<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>

<dnn:DnnCssInclude runat="server" FilePath="css/menu.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/page-layouts.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/rca.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/core.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/base.css" PathNameAlias="SkinPath" />

<dnn:JQUERY ID="dnnjQuery" runat="server" />
<dnn:DnnJsInclude ID="googlejs" runat="server" FilePath="js/google-scripts.js" PathNameAlias="SkinPath" AddTag="false" />
<dnn:DnnJsInclude ID="tbotjs" runat="server" FilePath="js/tbot.js" PathNameAlias="SkinPath" AddTag="false" />



<div id="s4-workspace" class="s4-workspace s4-nosetwidth">
    <div id="s4-bodyContainer">

        <div id="headerWrapper" class="width-wrapper">
            <div id="header" class="s4-notdlg noindex">
                <div id="HeaderPane" runat="server"></div>
                
                <!-- main navigation area -->
                <div id="mainNav">
                    <!-- main navigation menu -->
                    <div id="zz1_TopNavigationMenuV4">
                        <div class="menu horizontal menu-horizontal">
                            <dnn:MENU ID="navMenu" MenuStyle="simpleNav" runat="server"></dnn:MENU>
                        </div>
                    </div>
                </div>
                
                <div id="mainNavDropdownWrapper" class="width-wrapper">
                    <div id="mainNavDropdown">
                    </div>
                </div>

                <!-- search box -->
                <div id="searchBar">
                    <dnn:SEARCH ID="dnnSearch" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="SearchButton" />
                </div>
            </div>
        </div>

        <!-- id="mso_contentdiv" required, helps SharePoint put the web part editing pane in the main body on the right, you can move the ID if needed -->
        <!-- s4-ca is the main body div -->
        <div id="contentWrapper" class="width-wrapper">
            <div id="ctl00_MSO_ContentDiv" class="s4-ca">
                <!-- page content loads from the pages and pages layout -->

                <div class="tbot-page-layout tbot-content-page">
                    
                    <span class="breadcrumb">
                        <dnn:Breadcrumb runat="server" RootLevel="-1" id="dnnBreadcrumb" UseTitle="true" Separator="<img src='/Portals/_default/Skins/Bot/images/breadcrumb-separator.png'/>"/>
                    </span>
                    
                    <div id="tbotHeaderWrapper" class="tbot-header-wrapper">
                        <div class="tbot-header-text">
                            <h1><%= Server.HtmlEncode(PortalSettings.ActiveTab.Title) %></h1>
                        </div>
                    </div>

                    <div id="PreContentPane" runat="server"></div>
                    
                    <div class="wpz-row wpz-2-column vertical-padding link-hover-effect">
                        <div style="width:460px!important;">
                            <div id="SidebarPane" runat="server"></div>
                        </div>
                        <div style="width:460px!important;">
                            <div id="ContentPane" runat="server"></div>
                        </div>
                    </div>
                    <div class="wpz-row wpz-1-column link-hover-effect">
                        <div>
                            <div id="BottomPreFooterPane" class="clearfix" runat="server"></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- footer -->
        <div id="footerWrapper" class="width-wrapper s4-notdlg ">
            <div>
                <hr class="small-hr"/>
           
                <div id="FooterPane" runat="server"></div>
            </div>
        </div>
    </div>