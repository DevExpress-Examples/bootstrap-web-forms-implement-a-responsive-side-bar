<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128549035/17.2.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T605275)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [navBarLayout.css](./CS/NavBarResponsive/Content/navBarLayout.css)
* [site.js](./CS/NavBarResponsive/Content/site.js) (VB: [site.js](./VB/NavBarResponsive/Content/site.js))
* [SideBar.ascx](./CS/NavBarResponsive/Shared/SideBar.ascx) (VB: [SideBar.ascx](./VB/NavBarResponsive/Shared/SideBar.ascx))
* **[Site.master](./CS/NavBarResponsive/Shared/Site.master) (VB: [Site.master](./VB/NavBarResponsive/Shared/Site.master))**
<!-- default file list end -->
# Bootstrap Controls for ASP.NET Web Forms - How to implement a responsive side bar
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t605275/)**
<!-- run online end -->


<p>This example shows how to implement a simplified version of the responsive side bar from our <a href="https://demos.devexpress.com/bootstrap/">online Bootstrap demos</a>.<br>The required layout is implemented in the following files:<br><br><strong>1. "Shared/Site.master"<br></strong>This is a Master Page where the basic web site layout is implemented. It also contains the side bar element:</p>


```aspx
<uc:SideBar runat="server" id="SideBar" />

```


<p> </p>
<p>To enable responsive layout, add references to the following styles

* <strong><em>bootstrap.min.css</em></strong>;
* <strong><em>navBarLayout.css</em></strong> - this file includes required CSS rules for this layout;<br><br>Also, the following scripts are required

* <strong><em>jQuery</em></strong>;
* <strong><em>site.js</em></strong> - this file contains the required JavaScript code.<br>You can also include the desired icon font there.<br><br><strong>2. "Shared/SideBar.ascx"<br></strong>This is a User Control which implements the side bar element. It is created using the <a href="https://demos.devexpress.com/Bootstrap/Navigation/TreeView.aspx">BootstrapTreeView </a>control. Make sure that the <strong>ID</strong> of this control is set to "<strong>navTreeView</strong>" and the <strong>ClientIDMode</strong> is set to<strong> "static"</strong>: this ID is used in the CSS classes. To collapse the side bar like in our demos, handle the client-side <a href="https://documentation.devexpress.com/AspNetBootstrap/DevExpress.Web.Bootstrap.Scripts.BootstrapClientTreeView.members">BootstrapClientTreeView</a>.<a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.Scripts.ASPxClientTreeView.NodeClick.event">NodeClick </a>event and call the <strong>onSideBarNodeClick </strong>function in it. This function hides the side bar depending on window size.<br><br></p>

<br/>


