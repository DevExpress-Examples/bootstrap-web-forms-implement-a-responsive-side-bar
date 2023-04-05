<%@ Page Title="" Language="VB" MasterPageFile="~/Shared/Site.master" AutoEventWireup="true" CodeBehind="Editors.aspx.vb" Inherits="NavBarResponsive.Editors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="jumbotron bg-light">
        <h1>Editors</h1>
          <div class="form-group">
        <dx:BootstrapTextBox NullText="Enter Name..." Caption="Name" runat="server">
            <ValidationSettings ValidationGroup="Validation">
                <RequiredField IsRequired="true" ErrorText="Name is required" />
            </ValidationSettings>
        </dx:BootstrapTextBox>
    </div>
    <div class="form-group">
        <dx:BootstrapDateEdit NullText="Select Birthday..." Caption="Birthday" runat="server">
            <ValidationSettings ValidationGroup="Validation">
                <RequiredField IsRequired="true" ErrorText="Birthday is required" />
            </ValidationSettings>
        </dx:BootstrapDateEdit>
    </div>
    <div class="form-group">
        <dx:BootstrapButtonEdit ClearButton-DisplayMode="OnHover" NullText="Enter E-mail..." Caption="E-mail" runat="server">
            <ValidationSettings ValidationGroup="Validation">
                <RequiredField IsRequired="true" ErrorText="E-mail is required" />
                <RegularExpression ErrorText="Invalid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
            </ValidationSettings>
            <Buttons>
                <dx:BootstrapEditButton IconCssClass="fa fa-envelope" />
            </Buttons>
        </dx:BootstrapButtonEdit>
    </div>
    <div class="form-group">
        <dx:BootstrapTextBox NullText="Enter Phone Number..." Caption="Phone Number" runat="server">
            <ValidationSettings ValidationGroup="Validation">
                <RequiredField IsRequired="true" ErrorText="Phone Number is required" />
                <RegularExpression ValidationExpression="\(?\b[0-9]{3}\)?[-. ]?[0-9]{3}[-. ]?[0-9]{4}\b" ErrorText="Please input missing digits" />
            </ValidationSettings>
            <MaskSettings Mask="+1 (999) 999-9999" IncludeLiterals="None" />
        </dx:BootstrapTextBox>
    </div>
    <dx:BootstrapButton runat="server" Text="OK" SettingsBootstrap-RenderOption="Primary">
        <CssClasses Icon="fa fa-check" />
    </dx:BootstrapButton>
    <dx:BootstrapButton runat="server" Text="Cancel" SettingsBootstrap-RenderOption="Link" AutoPostBack="false">
        <ClientSideEvents Click="function(s, e) { ASPxClientEdit.ClearGroup('Validation'); }" />
    </dx:BootstrapButton>
    </div>
  
</asp:Content>
