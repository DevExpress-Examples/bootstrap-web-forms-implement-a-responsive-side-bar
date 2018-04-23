<%@ Page Title="" Language="vb" MasterPageFile="~/Shared/Site.master" AutoEventWireup="true" CodeBehind="GridView.aspx.vb" Inherits="NavBarResponsive.GridView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="jumbotron bg-light">
        <h1>GridView</h1>
        <dx:BootstrapGridView ID="BootstrapGridView1" runat="server" ClientInstanceName="grid"
            DataSourceID="ObjectDataSource1" KeyFieldName="Id" AutoGenerateColumns="False">
            <SettingsDataSecurity AllowDelete="true" AllowEdit="true" AllowInsert="true" />
            <Columns>
                <dx:BootstrapGridViewCommandColumn VisibleIndex="0" ShowEditButton="true" ShowNewButtonInHeader="true" ShowDeleteButton="true">
                </dx:BootstrapGridViewCommandColumn>
                <dx:BootstrapGridViewTextColumn FieldName="Id" ReadOnly="True" VisibleIndex="1">
                </dx:BootstrapGridViewTextColumn>
                <dx:BootstrapGridViewTextColumn FieldName="Description" VisibleIndex="2">
                </dx:BootstrapGridViewTextColumn>
                <dx:BootstrapGridViewSpinEditColumn FieldName="Price" VisibleIndex="3">
                </dx:BootstrapGridViewSpinEditColumn>
            </Columns>
        </dx:BootstrapGridView>
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
        DataObjectTypeName="Invoice" DeleteMethod="DeleteInvoice"
        InsertMethod="InsertInvoice" SelectMethod="GetInvoices"
        TypeName="InvoiceDataContext" UpdateMethod="UpdateInvoice"></asp:ObjectDataSource>
</asp:Content>