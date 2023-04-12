<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SideBar.ascx.cs" Inherits="NavBarResponsive.Shared.SideBar" %>
<section id="sidebar">
    <div class="sidebar-body">
         <dx:BootstrapTreeView runat="server" ID="navTreeView" ClientInstanceName="navTreeView"
            ShowExpandButtons="false" ClientIDMode="Static">
            <Nodes>
                <dx:BootstrapTreeViewNode Text="GridView" NavigateUrl="~/GridView.aspx" IconCssClass="fas fa-th"></dx:BootstrapTreeViewNode>
                <dx:BootstrapTreeViewNode Text="Editors" NavigateUrl="~/Editors.aspx" IconCssClass="fas fa-edit"></dx:BootstrapTreeViewNode>
                <dx:BootstrapTreeViewNode Text="Getting Started" IconCssClass="fas fa-question" NavigateUrl="~/Default.aspx" Expanded="true">
                    <Nodes>
                        <dx:BootstrapTreeViewNode Text="About" NavigateUrl="~/About.aspx"></dx:BootstrapTreeViewNode>
                    </Nodes>
                </dx:BootstrapTreeViewNode>
            </Nodes>
            <ClientSideEvents ExpandedChanging="preventExpandedChanging" NodeClick="onSideBarNodeClick" />
        </dx:BootstrapTreeView>
    </div>
</section>
